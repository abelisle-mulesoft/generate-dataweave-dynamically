----------------------------------------------------------------------------------------------------
CREATE TABLE public.dataweave_script
(
  script_name TEXT PRIMARY KEY,
  configuration TEXT NOT NULL,
  dw_script TEXT NOT NULL
);

ALTER TABLE public.dataweave_script
  OWNER TO dbuser;
