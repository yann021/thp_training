require 'launchy'

arg = ARGV
url = "https://www.google.com/search?client=ubuntu&channel=fs&ie=utf-8&oe=utf-8"

url+= "&q="+arg.join("+")

Launchy.open(url)

# alias ybrec="ruby ~/Documents/thp/programe/s2/s2j5/mon_projet/lib/01_googleschearch.rb"
