
CREATE TABLE users (
  id integer NOT NULL,
  email VARCHAR(127) NOT NULL, 
  followed_date TIMESTAMP  
);


CREATE TABLE article_domain (
  id integer NOT NULL,
  domain_name VARCHAR(127) NOT NULL  
);


CREATE TABLE article_info (
  id integer NOT NULL,  
  title VARCHAR(127) NOT NULL,  
  url VARCHAR(127) NOT NULL,  
  domain_id INTEGER,  
  sim_hash_vale INTEGER,  
  published_at TIMESTAMP,  
  CONSTRAINT fk_article_info_domain_id FOREIGN KEY (domain_id) REFERENCES article_domain(id)  
);


CREATE TABLE subscribe_info (
  id integer NOT NULL,
  user_id INTEGER,  
  domain_id INTEGER,  -
  CONSTRAINT fk_subscribe_info_user_id FOREIGN KEY (user_id) REFERENCES users(id),  
  CONSTRAINT fk_subscribe_info_domain_id FOREIGN KEY (domain_id) REFERENCES article_domain(id)  
);


ALTER TABLE article_info
  ADD CONSTRAINT fk_article_info_domain_id FOREIGN KEY (domain_id) REFERENCES article_domain(id);

ALTER TABLE subscribe_info
  ADD CONSTRAINT fk_subscribe_info_user_id FOREIGN KEY (user_id) REFERENCES users(id);

ALTER TABLE subscribe_info
  ADD CONSTRAINT fk_subscribe_info_domain_id FOREIGN KEY (domain_id) REFERENCES article_domain(id);
