# BBC-iPlayer
youtube-dl does not support providing a series link from BBC Iplayer, but instead can take an input file with individual download links.

This little app simply parses the BBC series link, and provides output to STDOUT and to a file called bbc.txt that provides all of the program links within a series.

Usage BBC-iplayer.exe {url of BBC series link} {output file}

e.g.:

BBC-Iplayer.exe https://www.bbc.co.uk/iplayer/episodes/b07xdmgk/hey-duggee?seriesId=b07xdmhq heyduggee.txt

Provides:
"https://www.bbc.co.uk/iplayer/episode/b07xdmp9/hey-duggee-series-2-1-the-making-music-badge"
"https://www.bbc.co.uk/iplayer/episode/b07xdnbl/hey-duggee-series-2-2-the-whistling-badge"
"https://www.bbc.co.uk/iplayer/episode/b07xdph7/hey-duggee-series-2-3-the-shape-badge"
"https://www.bbc.co.uk/iplayer/episode/b07xdprj/hey-duggee-series-2-4-the-juice-badge"
"https://www.bbc.co.uk/iplayer/episode/b07xdpzr/hey-duggee-series-2-5-the-footprint-badge"
"https://www.bbc.co.uk/iplayer/episode/b07y642r/hey-duggee-series-2-6-the-fossil-badge"
"https://www.bbc.co.uk/iplayer/episode/b07y662y/hey-duggee-series-2-7-the-treehouse-badge"
"https://www.bbc.co.uk/iplayer/episode/b07y677q/hey-duggee-series-2-8-the-kite-badge"
"https://www.bbc.co.uk/iplayer/episode/b07y694z/hey-duggee-series-2-9-the-tadpole-badge"
"https://www.bbc.co.uk/iplayer/episode/b07y69ql/hey-duggee-series-2-10-the-honey-badge"
"https://www.bbc.co.uk/iplayer/episode/b07z393l/hey-duggee-series-2-11-the-pottery-badge"
"https://www.bbc.co.uk/iplayer/episode/b07z3b0f/hey-duggee-series-2-12-the-teamwork-badge"
"https://www.bbc.co.uk/iplayer/episode/b07z2xwx/hey-duggee-series-2-13-the-dancing-bug-badge"
"https://www.bbc.co.uk/iplayer/episode/b08v95fw/hey-duggee-series-2-14-the-train-badge"
"https://www.bbc.co.uk/iplayer/episode/b08v9cr1/hey-duggee-series-2-15-the-pizza-badge"
"https://www.bbc.co.uk/iplayer/episode/b08v9rwt/hey-duggee-series-2-16-the-medicine-badge"
"https://www.bbc.co.uk/iplayer/episode/b08vdnh4/hey-duggee-series-2-17-the-camping-badge"
"https://www.bbc.co.uk/iplayer/episode/b08w10tz/hey-duggee-series-2-21-the-collecting-badge"
"https://www.bbc.co.uk/iplayer/episode/b08w1dyy/hey-duggee-series-2-23-the-theatre-badge"
"https://www.bbc.co.uk/iplayer/episode/b0b952d0/hey-duggee-series-2-49-the-sailing-badge"
"https://www.bbc.co.uk/iplayer/episode/b0b95311/hey-duggee-series-2-50-the-key-badge"
"https://www.bbc.co.uk/iplayer/episode/b0bb2ffl/hey-duggee-series-2-51-the-fashion-badge"
"https://www.bbc.co.uk/iplayer/episode/b0bb2hnm/hey-duggee-series-2-52-the-glasses-badge"

It will create a file with the name specified with the outputted series links.
