
CREATE TABLE users (
  id SERIAL PRIMARY KEY,  
  email VARCHAR(127) NOT NULL UNIQUE, 
  followed_date TIMESTAMP  
);


CREATE TABLE article_domain (
  id SERIAL PRIMARY KEY,  
  domain VARCHAR(127) NOT NULL UNIQUE
);


CREATE TABLE article_info (
  id SERIAL PRIMARY KEY,   
  title VARCHAR(127) NOT NULL,  
  url VARCHAR(127) NOT NULL,  
  domain_id INTEGER,  
  sim_hash_value INTEGER,  
  published_at TIMESTAMP,  
  CONSTRAINT fk_article_info_domain_id FOREIGN KEY (domain_id) REFERENCES article_domain(id)  
);

CREATE TABLE article_path (
  id SERIAL PRIMARY KEY,  
  domain_id INTEGER,
  path VARCHAR(127),
  CONSTRAINT fk_article_path_domain_id FOREIGN KEY (domain_id) REFERENCES article_domain(id)  
);

CREATE TABLE subscribe_info (
  id SERIAL PRIMARY KEY,  
  user_id INTEGER,
  domain_id INTEGER,
  CONSTRAINT fk_subscribe_info_user_id FOREIGN KEY (user_id) REFERENCES users(id),  
  CONSTRAINT fk_subscribe_info_domain_id FOREIGN KEY (domain_id) REFERENCES article_domain(id)  
);