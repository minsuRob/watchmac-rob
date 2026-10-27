# 서명 설정 (예시)

이 파일을 `signing.local.md` 로 복사한 뒤 본인 값으로 채우세요.
`signing.local.md` 는 `.gitignore` 에 들어 있어서 커밋되지 않습니다.

빌드 스크립트(`mac/build-app.sh`, `mac/make-dmg.sh`, `watch/generate.sh`)가
아래 `- 키: \`값\`` 줄을 자동으로 읽습니다. 같은 이름의 환경변수가 있으면 그게 우선합니다.

- 사용 가능한 서명 ID 확인: `security find-identity -v -p codesigning`
- 팀 ID 는 서명 ID 괄호 안의 값이 아니라, Xcode → Settings → Accounts 의 Team ID 입니다.

## 값

- WATCHMAC_SIGN_ID: `Apple Development: 이름 (XXXXXXXXXX)`
- WATCHMAC_TEAM_ID: `XXXXXXXXXX`
- WATCHMAC_NOTARY_PROFILE: `notary-profile-name`
