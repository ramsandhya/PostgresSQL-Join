CREATE TABLE project (
  id serial PRIMARY KEY,
  name varchar NOT NULL,
  stars integer CHECK (stars > 0 and stars <= 5)
);
​
CREATE TABLE coder (
  id serial PRIMARY KEY,
  name varchar NOT NULL
);
​
CREATE TABLE tech (
  id serial PRIMARY KEY,
  name varchar NOT NULL
);
​
CREATE TABLE project_uses_coder (
  project_id integer NOT NULL REFERENCES project (id),
  coder_id integer NOT NULL REFERENCES coder (id)
);
​
CREATE TABLE project_uses_tech (
  project_id integer NOT NULL REFERENCES project (id),
  tech_id integer NOT NULL REFERENCES tech (id)
);
​
CREATE TABLE coder_uses_tech (
  coder_id integer NOT NULL REFERENCES coder (id),
  tech_id integer NOT NULL REFERENCES tech (id)
);
​
CREATE TABLE pull_request (
  id serial PRIMARY KEY,
  project_id integer NOT NULL REFERENCES project (id),
  coder_id integer NOT NULL REFERENCES coder (id),
  merged boolean
);
​
CREATE TABLE commit (
  project_id integer NOT NULL REFERENCES project (id),
  coder_id integer NOT NULL REFERENCES coder (id),
  pull_request_id integer NOT NULL REFERENCES pull_request (id),
);
