drop table if exists hcm_example_table;
drop table if exists payroll_example_table;

create table hcm_example_table
( name varchar
, description varchar
);
create table payroll_example_table
( name varchar
, description varchar
);

COPY hcm_example_table
( name
, description
)
from '/docker-entrypoint-initdb.d/hcm_example.csv' DELIMITER ',' CSV HEADER;
COPY payroll_example_table
( name
, description
)
from '/docker-entrypoint-initdb.d/payroll_example.csv' DELIMITER ',' CSV HEADER;
