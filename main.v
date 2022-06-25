module main

import rand
import readline
import strconv

const min = 1

const max = 100

fn main() {
	number := 25 // rand.int_in_range(min, max + 1)?
	mut guess_count := 0

	for {
		guess := readline.read_line('Guess a number between 1 and 100: ') or { exit(0) }
			.trim_space()

		guess_number := strconv.parse_uint(guess, 10, 0) or {
			println('Please enter a valid number')
			continue
		}

		guess_count += 1

		if guess_number > number {
			println('Too high')
		} else if guess_number < number {
			println('Too low')
		} else {
			break
		}
	}

	println('Nice, you got it in $guess_count ${Plural{guess_count, 'guess', 'guesses'}}.')
}
