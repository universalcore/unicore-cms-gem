#!/bin/bash
find . -name '*.mo' -delete
mkdir -p unicorecmsgem/locale

pot-create -o unicorecmsgem/locale/unicorecmsgem.pot unicorecmsgem/

mkdir -p unicorecmsgem/locale/eng_UK/LC_MESSAGES
mkdir -p unicorecmsgem/locale/tha_TH/LC_MESSAGES
mkdir -p unicorecmsgem/locale/ind_ID/LC_MESSAGES
mkdir -p unicorecmsgem/locale/swh_TZ/LC_MESSAGES

# only uncomment if it's the 1st time
#msginit -l eng_UK -i unicorecmsgem/locale/unicorecmsgem.pot -o unicorecmsgem/locale/eng_UK/LC_MESSAGES/unicorecmsgem.po
#msginit -l tha_TH -i unicorecmsgem/locale/unicorecmsgem.pot -o unicorecmsgem/locale/tha_TH/LC_MESSAGES/unicorecmsgem.po
#msginit -l ind_ID -i unicorecmsgem/locale/unicorecmsgem.pot -o unicorecmsgem/locale/ind_ID/LC_MESSAGES/unicorecmsgem.po
#msginit -l swh_TZ -i unicorecmsgem/locale/unicorecmsgem.pot -o unicorecmsgem/locale/swh_TZ/LC_MESSAGES/unicorecmsgem.po

msgmerge --update unicorecmsgem/locale/eng_UK/LC_MESSAGES/unicorecmsgem.po unicorecmsgem/locale/unicorecmsgem.pot
msgmerge --update unicorecmsgem/locale/tha_TH/LC_MESSAGES/unicorecmsgem.po unicorecmsgem/locale/unicorecmsgem.pot
msgmerge --update unicorecmsgem/locale/ind_ID/LC_MESSAGES/unicorecmsgem.po unicorecmsgem/locale/unicorecmsgem.pot
msgmerge --update unicorecmsgem/locale/swh_TZ/LC_MESSAGES/unicorecmsgem.po unicorecmsgem/locale/unicorecmsgem.pot

msgfmt unicorecmsgem/locale/eng_UK/LC_MESSAGES/*.po -o unicorecmsgem/locale/eng_UK/LC_MESSAGES/unicorecmsgem.mo
msgfmt unicorecmsgem/locale/tha_TH/LC_MESSAGES/*.po -o unicorecmsgem/locale/tha_TH/LC_MESSAGES/unicorecmsgem.mo
msgfmt unicorecmsgem/locale/ind_ID/LC_MESSAGES/*.po -o unicorecmsgem/locale/ind_ID/LC_MESSAGES/unicorecmsgem.mo
msgfmt unicorecmsgem/locale/swh_TZ/LC_MESSAGES/*.po -o unicorecmsgem/locale/swh_TZ/LC_MESSAGES/unicorecmsgem.mo
