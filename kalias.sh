#!/bin/bash

TARGET="${HOME}/.kube"
EXT="kubeconfig"
ALIASFILE="${HOME}/.kalias"

abbr_list=()

if [[ -e "${ALIASFILE}" ]]; then
    rm -f "${ALIASFILE}"
fi

for filepath in $(find "${TARGET}" -depth 1 -type f -name "*.${EXT}"); do
    # 확장자 제거
    filename=$(basename "$filepath" ".${EXT}")

    # "dkosv3" 제거
    shortname=${filename#dkosv3-}

    # 단어별로 쪼개서 각각의 첫 1-2글자를 가져옴
    IFS='-' read -ra words <<<"$shortname"
    abbr=""
    for word in "${words[@]}"; do
        abbr+=${word:0:1}
    done

    # 보장된 최소 길이를 위해 부족하면 추가
    while [[ ${#abbr} -lt 3 ]]; do
        abbr+=${shortname:${#abbr}:1}
    done

    # 중복되는 약어를 피하기 위해 카운트를 붙임
    count=1
    unique_abbr=$abbr
    while [[ " ${abbr_list[*]} " == *" $unique_abbr "* ]]; do
        unique_abbr="${abbr}${count}"
        ((count++))
    done

    # 리스트에 추가
    abbr_list+=("$unique_abbr")

    echo "${unique_abbr} ${filepath}"
    echo "alias ${unique_abbr}='kubecolor --kubeconfig=${filepath}'" >>${ALIASFILE}

    ## with watch command
    echo "alias w${unique_abbr}='watch kubectl --kubeconfig=${filepath}'" >>${ALIASFILE}
    echo "" >>${ALIASFILE}
    
done

echo
echo "source ${ALIASFILE}"

