# source 해서 사용: 저장소 루트의 signing.local.md 에서 WATCHMAC_* 값을 읽어 export.
# 이미 설정된 환경변수는 덮어쓰지 않음.
_signing_md="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/signing.local.md"
if [ -f "$_signing_md" ]; then
    while IFS= read -r _line; do
        if [[ "$_line" =~ ^-\ (WATCHMAC_[A-Z_]+):\ \`(.*)\`[[:space:]]*$ ]]; then
            _key="${BASH_REMATCH[1]}"; _val="${BASH_REMATCH[2]}"
            [ -z "${!_key}" ] && export "$_key=$_val"
        fi
    done < "$_signing_md"
fi
unset _signing_md _line _key _val
