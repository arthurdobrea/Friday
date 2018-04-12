CREATE TABLE users (
  id       INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(255) NOT NULL,
  password VARCHAR(255) NOT NULL,
  email    VARCHAR(255) NOT NULL,
  firstname VARCHAR(255) NOT NULL,
  lastname VARCHAR(255) NOT NULL,
  subscription_by_event_type VARCHAR(255),
  image          bytea
)

 ENGINE = InnoDB;

CREATE TABLE  roles(
  id int NOT NULL  AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL
)
  ENGINE = InnoDB;

CREATE TABLE  user_roles(
  user_id int not NULL,
  role_id int not null,


  FOREIGN KEY (user_id) REFERENCES useres(id),
  FOREIGN KEY (role_id) REFERENCES roles(id),

  UNIQUE (user_id,role_id)
)

  ENGINE = InnoDB;

CREATE TABLE events (
  id             BIGSERIAL    NOT NULL PRIMARY KEY,
  event_name     VARCHAR(255) NOT NULL,
  event_type     VARCHAR(255),
  author_user_id INT,
  image          bytea,
  createdata     TIMESTAMP,
  timebegin      TIMESTAMP,
  timeend        TIMESTAMP,
  event_location VARCHAR(255),
  description    VARCHAR(1000),

  FOREIGN KEY (author_user_id) REFERENCES users (id) ON DELETE CASCADE
);
CREATE TABLE events_users (
  event_id INT NOT NULL,
  user_id  INT,

  FOREIGN KEY (user_id) REFERENCES users (id) ON DELETE CASCADE,
  FOREIGN KEY (event_id) REFERENCES events (id) ON DELETE CASCADE
);

--Tags
CREATE TABLE tags (
  id        BIGSERIAL    NOT NULL PRIMARY KEY,
  tag_name  VARCHAR(255) NOT NULL,
  tag_color VARCHAR(255) NOT NULL
);

--Events-tags
CREATE TABLE events_tags (
  event_id SERIAL NOT NULL,
  tag_id   SERIAL,

  FOREIGN KEY (tag_id) REFERENCES tags (id) ON DELETE CASCADE,
  FOREIGN KEY (event_id) REFERENCES events (id) ON DELETE CASCADE
);

INSERT INTO useres VALUES (1, 'admin','312r821747f19f1830ue984f57910fj');

INSERT roles VALUES (1,'ROLE_USER');
INSERT roles VALUES (2,'ROLE_ADMIN');

INSERT INTO user_roles VALUES(1,2);