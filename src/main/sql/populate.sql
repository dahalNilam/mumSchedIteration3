INSERT INTO users(id,username,password,enabled) VALUES (1,'student','student', TRUE);
INSERT INTO users(id,username,password,enabled) VALUES (2,'admin','admin', TRUE);
INSERT INTO users(id,username,password,enabled) VALUES (3,'faculty','faculty', TRUE);

INSERT INTO user_roles (id,userid, authority) VALUES (1,1, 'ROLE_STUDENT');
INSERT INTO user_roles (id,userid, authority) VALUES (2,2, 'ROLE_ADMIN');
INSERT INTO user_roles (id,userid, authority) VALUES (3,3, 'ROLE_FACULTY');