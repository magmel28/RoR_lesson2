require 'colorize'

class Ball
	def initialize
		@ballAnswers =  ['It is certain',
				        'It is decidedly so',
						'Without a doubt',
						'Yes — definitely',
						'You may rely on it',

						'As I see it, yes',
						'Most likely',
						'Outlook good',
						'Signs point to yes',
						'Yes',

						'Reply hazy, try again',
						'Ask again later',
						'Better not tell you now',
						'Cannot predict now',
						'Concentrate and ask again',

						'Don’t count on it',
						'My reply is no',
						'My sources say no',
						'Outlook not so good',
						'Very doubtful']		
	end
	def shake
		indexAnswer = rand(@ballAnswers.length)
		answer = @ballAnswers[indexAnswer]
		if indexAnswer < 5
			answer.blue
		elsif indexAnswer < 10
			answer.green
		elsif indexAnswer < 15
			answer.yellow
		elsif indexAnswer < 20
			answer.red
		end
	end
end			

a = Ball.new
puts a.shake
