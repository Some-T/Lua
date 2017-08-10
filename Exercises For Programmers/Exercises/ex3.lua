io.write "What is the quote? \n"
quote = io.read()
if quote == "These aren't the droids you're looking for."  then
	io.write "Who said it? \n"
	who = io.read()
	if who == "Obi-Wan Kenobi"  then
		io.write "Obi-Wan Kenobi says, \"These aren\'t the droids you\'re looking for.\" \n"
		return
	end
end
io.write "wrong answer, program terminated! \n"