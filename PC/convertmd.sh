#!/bin/bash

echo "Qual o arquivo: "
read "qualarquivo"

# pandoc -f markdown -t html logins.md -o logins.html

pandoc -f markdown -t html $qualarquivo.md -o $qualarquivo.html
