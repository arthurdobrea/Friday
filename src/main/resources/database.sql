CREATE TABLE users (
  id       SERIAL PRIMARY KEY,
  username VARCHAR(255) NOT NULL,
  password VARCHAR(255) NOT NULL,
  email    VARCHAR(255),
  firstname VARCHAR(255),
  lastname VARCHAR(255),
  subscription_by_event_type VARCHAR(255),
  image          bytea
);

CREATE TABLE  roles(
  id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL
);

CREATE TABLE  user_roles(
  user_id int not NULL,
  role_id int not null,


  FOREIGN KEY (user_id) REFERENCES users(id),
  FOREIGN KEY (role_id) REFERENCES roles(id),

  UNIQUE (user_id,role_id)
);

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

ALTER table events add datebegin date
ALTER table users add subscribedUsers VARCHAR(255)

INSERT INTO roles VALUES (1,'ROLE_USER');
INSERT INTO roles VALUES (2,'ROLE_ADMIN');

insert into users values(4,'ARNOLDIN','12345678','asdasdasd@mail.ru','Arnoldin','White')
