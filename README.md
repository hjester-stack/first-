# 세특 초안 작성기

Vercel 정적 배포와 Supabase REST API에 맞춘 단일 페이지 웹앱입니다.

## 사용

`index.html`을 Vercel 프로젝트 루트에 배포합니다. 개인 메뉴에서 Gemini API 키와 모델을 입력하면 실제 3단계 에이전트가 실행되고, 키가 없으면 데모 모드로 동작합니다. Supabase 원격 저장을 쓰려면 `supabase/schema.sql`을 SQL Editor에서 실행한 뒤 URL과 anon key를 입력하세요.

운영 환경에서는 Supabase Auth를 붙이고 RLS 정책을 사용자별로 제한하며, Gemini 키는 브라우저에 직접 노출하지 않도록 Vercel Serverless Function으로 옮기는 것을 권장합니다.
