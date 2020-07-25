;~ $url=$CmdLine[1] ;
#include <Array.au3>
$url="https://www.bbc.co.uk/programmes/p07qhqmj"

if StringInStr($url,"programmes") then
	$aParse=StringSplit($url,"/")
	$programID=$aParse[5]
$url="https://www.bbc.co.uk/iplayer/episodes/"&$programID
;~ 	_ArrayDisplay($aParse)
EndIf

ConsoleWrite($programID&@CRLF)
$url="https://www.bbc.co.uk/programmes/p07qhqdy/episodes/player"
ConsoleWrite($url&@CRLF)
$url="https://www.bbc.co.uk/iplayer/episodes/b006mj2y/looking-for-alaska"
ConsoleWrite($url&@CRLF)
$url="https://www.bbc.co.uk/iplayer/episode/p07qj76p/looking-for-alaska-series-1-8-its-very-beautiful-over-there-thomas-edison"

$url="https://www.bbc.co.uk/programmes/b006mj2y/episodes/player"


;~ All you need is this:

;~ https://www.bbc.co.uk/iplayer/episodes/$programID