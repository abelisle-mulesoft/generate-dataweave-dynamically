----------------------------------------------------------------------------------------------------
CREATE TABLE public.dataweave_script
(
  script_name TEXT NOT NULL,
  configuration TEXT NOT NULL,
  dw_script TEXT NOT NULL
);

ALTER TABLE public.dataweave_script
  ADD CONSTRAINT dw_script_pkey PRIMARY KEY(script_name);

ALTER TABLE public.dataweave_script
  OWNER TO dbuser;
