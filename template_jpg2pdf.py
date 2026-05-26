import jpg2pdf

with jpg2pdf.create('test.pdf') as pdf:
	pdf.add('1.jpg')
