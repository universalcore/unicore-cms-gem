#!/bin/bash
find . -name '*.mo' -delete
mkdir -p unicorecmsgem/locale

pot-create -o unicorecmsgem/locale/unicorecmsgem.pot unicorecmsgem/

declare -a arr=(
    "eng_GB" "tha_TH" "ind_ID" "swa_TZ" "hin_IN" "fre_FR" "spa_CO" "spa_MX"
    "spa_AR" "mar_IN" "tel_IN" "por_PT" "mal_IN" "guj_IN" "tam_IN" "urd_IN"
    "urd_PK" "ben_IN" "ben_BD" "nep_NP" "fil_PH" "kan_IN" "ori_IN" "pan_IN"
    "asm_IN" "khm_KH" "kin_RW" "ara_AE" "rus_RU" "hau_NG")

for lang in "${arr[@]}"
do
    mkdir -p "unicorecmsgem/locale/""$lang""/LC_MESSAGES"

    if [ ! -f "unicorecmsgem/locale/""$lang""/LC_MESSAGES/unicorecmsgem.po" ]; then
        msginit -l $lang -i unicorecmsgem/locale/unicorecmsgem.pot -o unicorecmsgem/locale/$lang/LC_MESSAGES/unicorecmsgem.po
    fi

    msgmerge --update unicorecmsgem/locale/$lang/LC_MESSAGES/unicorecmsgem.po unicorecmsgem/locale/unicorecmsgem.pot
    msgfmt unicorecmsgem/locale/$lang/LC_MESSAGES/*.po -o unicorecmsgem/locale/$lang/LC_MESSAGES/unicorecmsgem.mo
done
