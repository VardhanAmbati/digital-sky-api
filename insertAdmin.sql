UPDATE digitalsky.ds_user SET account_verified=1 WHERE(id = 1);
INSERT INTO digitalsky.ds_user_role (user_id, user_role) VALUES(1,'ROLE_ADMIN');