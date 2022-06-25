module main

pub fn plural(count int, word string, plural_word string) string {
	return if count == 1 { word } else { plural_word }
}

pub fn plural_s(count int, word string) string {
	return plural(count, word, word + 's')
}
