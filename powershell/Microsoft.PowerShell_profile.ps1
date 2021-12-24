Import-Module posh-git

Set-Alias -Name ll -Value ls

Set-PSReadLineKeyHandler -Chord 'Alt+h' -Function BackwardChar
Set-PSReadLineKeyHandler -Chord 'Alt+j' -Function HistorySearchForward
Set-PSReadLineKeyHandler -Chord 'Alt+k' -Function HistorySearchBackward
Set-PSReadLineKeyHandler -Chord 'Alt+l' -Function ForwardChar
Set-PSReadLineKeyHandler -Chord 'Ctrl+b' -Function BackwardWord
Set-PSReadLineKeyHandler -Chord 'Ctrl+f' -Function NextWord
Set-PSReadlineKeyHandler -Chord 'Ctrl+a' -Function BeginningOfLine
Set-PSReadlineKeyHandler -Chord 'Ctrl+d' -Function ViExit
Set-PSReadlineKeyHandler -Chord 'Ctrl+e' -Function EndOfLine
