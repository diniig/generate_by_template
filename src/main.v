module main

import os

fn main() {
	mut templates := ''
	for i := 1; i <= 94; i++ {
		templates = templates + get_template(i)
	}

	// println('${templates}')
	mut f := os.create('result.yaml') or {
		println(err)
		return
	}

	defer {
		f.close()
	}
	f.write_string(templates) or { println(err) }
}

fn get_template(i int) string {
	return 'template-${i}
'
}
