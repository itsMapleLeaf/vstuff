module main

struct Plural {
	count       int    [required]
	word        string [required]
	plural_word string
}

fn (p Plural) str() string {
	return if p.count == 1 {
		p.word
	} else if p.plural_word != '' {
		p.plural_word
	} else {
		p.word + 's'
	}
}
