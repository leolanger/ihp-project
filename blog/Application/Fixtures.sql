

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;


SET SESSION AUTHORIZATION DEFAULT;

ALTER TABLE public.posts DISABLE TRIGGER ALL;

INSERT INTO public.posts (id, title, body, created_at) VALUES ('970b5dc1-3b1b-43cc-8656-fc19c5310d08', 'This is a title', 'This is a body', '2020-11-17 20:24:47.548749+08');
INSERT INTO public.posts (id, title, body, created_at) VALUES ('97734899-fa90-40a9-94be-3d5a83e1f177', 'Test with time', 'Body Content', '2020-11-17 20:49:12.640454+08');
INSERT INTO public.posts (id, title, body, created_at) VALUES ('a2b0a128-95b8-41c8-975a-6b05a90fa39d', 'Markdown test', '# Heading
**fat** word', '2020-11-17 21:02:34.563702+08');


ALTER TABLE public.posts ENABLE TRIGGER ALL;


ALTER TABLE public.comments DISABLE TRIGGER ALL;



ALTER TABLE public.comments ENABLE TRIGGER ALL;


