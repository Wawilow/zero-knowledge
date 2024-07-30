// SPDX-License-Identifier: MIT
/*
I got this site in bookmarks for like forever, I'm sooooooo glad to actually use it & of course I have to choose worst one style
                                                          ,-.
                                                      ,--/ /|
       ,----,            __  ,-.   ,---.      ,---,.,--. :/ |      ,---,
     .'   .`|          ,' ,'/ /|  '   ,'\   ,'  .' |:  : ' /   ,-+-. /  |
  .'   .'  .'   ,---.  '  | |' | /   /   |,---.'   ,|  '  /   ,--.'|'   |
,---, '   ./   /     \ |  |   ,'.   ; ,. :|   |    |'  |  :  |   |  ,"' |
;   | .'  /   /    /  |'  :  /  '   | |: ::   :  .' |  |   \ |   | /  | |
`---' /  ;--,.    ' / ||  | '   '   | .; ::   |.'   '  : |. \|   | |  | |
  /  /  / .`|'   ;   /|;  : |   |   :    |`---'     |  | ' \ \   | |  |/
./__;     .' '   |  / ||  , ;    \   \  /           '  : |--'|   | |--'
;   |  .'    |   :    | ---'      `----'            ;  |,'   |   |/
`---'         \   \  /    ,--,                      '--'     '---'
               `----'   ,--.'|                   ,---,
   ,---.           .---.|  | :                 ,---.'|
  '   ,'\         /. ./|:  : '                 |   | :  ,----._,.
 /   /   |     .-'-. ' ||  ' |      ,---.      |   | | /   /  ' /   ,---.
.   ; ,. :    /___/ \: |'  | |     /     \   ,--.__| ||   :     |  /     \
'   | |: : .-'.. '   ' .|  | :    /    /  | /   ,'   ||   | .\  . /    /  |
'   | .; :/___/ \:     ''  : |__ .    ' / |.   '  /  |.   ; ';  |.    ' / |
|   :    |.   \  ' .\   |  | '.'|'   ;   /|'   ; |:  |'   .   . |'   ;   /|
 \   \  /  \   \   ' \ |;  :    ;'   |  / ||   | '/  ' `---`-'| |'   |  / |
  `----'    \   \  |--" |  ,   / |   :    ||   :    :| .'__/\_: ||   :    |
             \   \ |     ---`-'   \   \  /  \   \  /   |   :    : \   \  /
              '---"                `----'    `----'     \   \  /   `----'
                                                         `--`-'
(zero-knowledge)
*/
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {Counter} from "../src/Counter.sol";

contract CounterScript is Script {
    Counter public counter;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        counter = new Counter();

        vm.stopBroadcast();
    }
}
