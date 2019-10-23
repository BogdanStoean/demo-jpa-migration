CREATE TABLE customer
(
  id character varying(255) NOT NULL,
  email character varying(255),
  first_name character varying(255),
  last_name character varying(255),
  CONSTRAINT customer_pkey PRIMARY KEY (id)
)