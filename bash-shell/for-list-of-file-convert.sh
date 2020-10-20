#!/bin/bash
for i in *.html
do
REALF=$(printf "%q\n" "$i")
PDFNAME=$(echo "$i" | rev | cut -c6- | rev)
wkhtmltopdf "$i" "$PDFNAME.pdf"
done
