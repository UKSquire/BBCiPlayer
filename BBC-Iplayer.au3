#comments-start
	BBC-iPlayer.au3 - to parse a BBC iPlayer series link and provide the individual program links
    Copyright (C) 2020 Mark Simpson
	Version 0.4 - allow programmes links

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <https://www.gnu.org/licenses/>.
#comments-end

#include <Array.au3>
#AutoIt3Wrapper_Change2CUI=y ; save the thing as a commandline app
ConsoleWrite("Number of params: " & $CmdLine[0])
$url=$CmdLine[1] ; Take as the input a BBC series link *e.g.: "https://www.bbc.co.uk/iplayer/episodes/m0009tgy/bing?seriesId=m0009xhl"
$bbcfile=$CmdLine[2]
if StringInStr($url,"programmes") then
	$aParse=StringSplit($url,"/")
	$programID=$aParse[5]
$url="https://www.bbc.co.uk/iplayer/episodes/"&$programID
;~ 	_ArrayDisplay($aParse)
EndIf

$file = @TempDir & "\bbcipyr.txt"
;~ $bbcfile = @ScriptDir & "\bbc.txt"
$sDelim = ","
InetGet($url, $file) ; go and get the full page contents
Local $aArray = FileReadToArray($file) ; load this into an array
Local $iLineCount = @extended ; for everything in the array...
If @error Then
	MsgBox($MB_SYSTEMMODAL, "", "There was an error reading the file. @error: " & @error)     ; An error occurred reading the current script file.
Else
	Local $hFileOpen = FileOpen($bbcfile, 2)

	For $i = 0 To $iLineCount - 1     ; Loop through the array. UBound($aArray) can also be used.
		If StringInStr($aArray[$i], "IPLAYER_REDUX_STATE") Then ; this seems to be the single line to parse that contains all the episodes
			Local $aArray2 = StringSplit($aArray[$i], $sDelim, 2) ; split all lines by comma
			For $x = 0 To UBound($aArray2) - 1 ; look for the lines that contain the iplayer episodes
				If StringInStr($aArray2[$x], "/iplayer/episode/") Then
					$link=StringMid($aArray2[$x],9) ; ignore the first bits, and strip trailing quotation mark
					$link=StringTrimRight($link,1)
;~ 					ConsoleWrite("link is " & $link & @crlf)
					ConsoleWrite("https://www.bbc.co.uk" & $link &@CRLF)
					FileWriteLine($bbcfile,"https://www.bbc.co.uk" & $link &@CRLF)
				EndIf
			Next
		EndIf
	Next
EndIf
FileClose($bbcfile)
FileDelete($file)