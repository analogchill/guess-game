#-------------------
#___Number Guessing Game____
#-------------------
#Author: Matthew Okhuysen
#you get 3 tries to guess the number between 1 and 10.

# Display the title of the game and give some info on it
Write-Host "--------------------------------------------------------" -BackgroundColor Red
Write-Host "Guess any number between 1 and 10"                        -ForegroundColor White
write-host "I will give you hints!  "  -ForegroundColor White
Write-Host "--------------------------------------------------------" -BackgroundColor Red
Write-Host ""
Write-Host ""

#Main Body

$Number = Get-Random -Minimum 1 -Maximum 10
$Guess = 0
$Tries = 0

Write-Host "I'm thinking of a number between 1 and 10."

While ($Number -ne $Guess) {

Write-Host -NoNewline "What is the number? "
$Guess = [int] (Read-Host)

$Tries = $Tries + 1

#Outcomes

If ($Tries -eq 3) { Write-Host "You are all out of guesses! Better luck next time!!" ;
Write-Host ".·´¯`(>▂<)´¯`·." ;
Start-Sleep -Seconds 2 ;
 break }

If ($Guess -gt $Number) { Write-Host "$Guess is too high." }
If ($Guess -lt $Number) { Write-Host "$Guess is too low." }   
If ($Guess -eq $Number) { Write-Host "Correct! $Number is the number I was thinking!" ;

function b($a,$b){
	[console]::beep($a,$b)
}
function s($a){
	sleep -m $a
}
write-host "YAY YOU DID IT!!!"
b 660 100;
s 100;
b 660 100;
s 100;
b 660 100;
s 100;
b 510 100;
s 100;
b 660 100;
s 100;
b 770 100;
s 100;
b 770 100;
s 350;

# animation frames separated by "#"

$animation = @"
(>'-')>
#
^('-')^
#
<('-'<)
#
^('-')^
"@

$frames = $animation.Split("#").Trim()

$animationLoopNumber = 2 # number of times to loop animation

$animationSpeed = 250 # time in milliseconds to show each frame

$i = 0

do {

    foreach ($frame in $frames) {

        Clear-Host
        
        Write-Output "$frame`n`n`n"
    
        Start-Sleep -Milliseconds $animationSpeed
    }

    $i++
    
} until ($i -eq $animationLoopNumber)

 break}


}