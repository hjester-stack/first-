create table if not exists public.setek_drafts (
  id uuid primary key default gen_random_uuid(),
  student_id text not null,
  grade text not null,
  subjects jsonb not null,
  generated_at timestamptz not null,
  created_at timestamptz not null default now()
);
alter table public.setek_drafts enable row level security;
-- 데모/개인 워크스페이스용 정책. 운영 시 Supabase Auth 사용자 ID로 제한하세요.
create policy "anonymous can read drafts" on public.setek_drafts for select using (true);
create policy "anonymous can insert drafts" on public.setek_drafts for insert with check (true);
