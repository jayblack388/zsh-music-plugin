on run argv
    set searchQuery to item 1 of argv
    set encodedQuery to do shell script "python3 -c 'import urllib.parse; print(urllib.parse.quote(\"" & searchQuery & "\"))'"
    set searchURL to "https://music.apple.com/search?term=" & encodedQuery
    open location searchURL
    return "Opening Apple Music web search for: " & searchQuery
end run