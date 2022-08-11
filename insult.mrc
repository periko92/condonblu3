alias insult {
  if ($1 == $null) { echo -a *** Usage: /insult <nick> | halt }
  ;if you edit the insult file, dont forget to change the random values here
  %insult.adj = $read(insult.txt, w, adj*,$rand(1,19))
  %insult.adj = $gettok(%insult.adj,$rand(2,$gettok(%insult.adj,0,32)),32)
  %insult.adj2 = $read(insult.txt, w, adj*,$rand(1,19))
  %insult.adj2 = $gettok(%insult.adj2,$rand(2,$gettok(%insult.adj2,0,32)),32)
  %insult.amt = $read(insult.txt, w, amt*,$rand(1,3))
  %insult.amt = $gettok(%insult.amt,$rand(2,$gettok(%insult.amt,0,32)),32)
  %insult.noun = $read(insult.txt,$rand(23,30))
  %insult.noun = $gettok(%insult.noun,$rand(2,$gettok(%insult.noun,0,32)),32)
  say $1 is nothing but a %insult.adj %insult.amt of %insult.adj2 $replace(%insult.noun,$chr(124),$chr(32))
}