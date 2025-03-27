#!/bin/bash
psql -h localhost -U postgres << EOF
\i /home/ubuntu/database_test/sql/join-order-benchmark/schema.sql;
\copy aka_name from /home/ubuntu/imdb/aka_name.csv with delimiter as ',' csv quote '"' escape as '\';
\copy aka_title from /home/ubuntu/imdb/aka_title.csv with delimiter as ',' csv quote '"' escape as '\';
\copy cast_info from /home/ubuntu/imdb/cast_info.csv with delimiter as ',' csv quote '"' escape as '\';
\copy char_name from /home/ubuntu/imdb/char_name.csv with delimiter as ',' csv quote '"' escape as '\';
\copy comp_cast_type from /home/ubuntu/imdb/comp_cast_type.csv with delimiter as ',' csv quote '"' escape as '\';
\copy company_name from /home/ubuntu/imdb/company_name.csv with delimiter as ',' csv quote '"' escape as '\';
\copy company_type from /home/ubuntu/imdb/company_type.csv with delimiter as ',' csv quote '"' escape as '\';
\copy complete_cast from /home/ubuntu/imdb/complete_cast.csv with delimiter as ',' csv quote '"' escape as '\';
\copy info_type from /home/ubuntu/imdb/info_type.csv with delimiter as ',' csv quote '"' escape as '\';
\copy keyword from /home/ubuntu/imdb/keyword.csv with delimiter as ',' csv quote '"' escape as '\';
\copy kind_type from /home/ubuntu/imdb/kind_type.csv with delimiter as ',' csv quote '"' escape as '\';
\copy link_type from /home/ubuntu/imdb/link_type.csv with delimiter as ',' csv quote '"' escape as '\';
\copy movie_companies from /home/ubuntu/imdb/movie_companies.csv with delimiter as ',' csv quote '"' escape as '\';
\copy movie_info_idx from /home/ubuntu/imdb/movie_info_idx.csv with delimiter as ',' csv quote '"' escape as '\';
\copy movie_info from /home/ubuntu/imdb/movie_info.csv with delimiter as ',' csv quote '"' escape as '\';
\copy movie_keyword from /home/ubuntu/imdb/movie_keyword.csv with delimiter as ',' csv quote '"' escape as '\';
\copy movie_link from /home/ubuntu/imdb/movie_link.csv with delimiter as ',' csv quote '"' escape as '\';
\copy name from /home/ubuntu/imdb/name.csv with delimiter as ',' csv quote '"' escape as '\';
\copy person_info from /home/ubuntu/imdb/person_info.csv with delimiter as ',' csv quote '"' escape as '\';
\copy role_type from /home/ubuntu/imdb/role_type.csv with delimiter as ',' csv quote '"' escape as '\';
\copy title from /home/ubuntu/imdb/title.csv with delimiter as ',' csv quote '"' escape as '\';
EOF