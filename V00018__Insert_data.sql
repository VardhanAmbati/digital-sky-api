UPDATE digitalsky.ds_user SET account_verified=1 WHERE(id = 1);
INSERT INTO digitalsky.ds_user_role (user_id, user_role) VALUES(1,'ROLE_ADMIN');
INSERT INTO digitalsky.ds_airspace_category (category_type, created_by_id, geo_json, min_altitude, name, modified_by_id)
VALUES ('GREEN', 1, '{"type":"FeatureCollection","features":[{"type":"Feature","properties":{"SHAPE_Area":null,"SHAPE_Length":null},"geometry":{"type":"Polygon","coordinates":[[[80.64817786216736,16.505800478163014],[80.64781308174133,16.504833524891755],[80.64893960952757,16.50425746532537],[80.64940631389618,16.505301572025797],[80.64817786216736,16.505800478163014]]]}}]}', 1000, 'category1', 1);
INSERT INTO digitalsky.ds_user (full_name, email, account_verification_token, password_hash, account_verified)
VALUES('vijay', 'vijayvardhan.a@inteamo.in', '4f00d6f0-3a87-4b78-a95b-64365fea1e0d', '$2a$10$gYQfFVkRb/qinxn5cI6B0Og8iXfgMSRq2MnyoKtudEb4XQgLu4ItS', 1);
INSERT INTO digitalsky.ds_manufacturer (id, business_identifier, resource_owner_id, status, trusted_certificate_doc_name)
VALUES(1, 'b100962d1efa4bb4a3c63cf936cc867f', 2, 'DEFAULT', 'trustedCertificateDoc.pem');
INSERT INTO digitalsky.ds_drone_device (device_model_id, version, id_hash, manufacturer_business_identifier, txn, unique_device_id)
VALUES('abcdefghijklmnopqrstuvwxyz', '1.0', '', 'b100962d1efa4bb4a3c63cf936cc867f', '1234', '1');
INSERT INTO digitalsky.ds_organization (contact_number, country, email, mobile_number, name)
VALUES('1234567890', 'India', 'mail@inteamo.in', '1234567890', 'inteamo');
INSERT INTO digitalsky.ds_address (country, line_one, line_two, pin_code, state, town_or_city, type)
VALUES('India', 'd.no.1', 'moghalrajpuram', '520010', 'Andhra Pradesh', 'vijayawada', 'DEFAULT');
INSERT INTO digitalsky.ds_organization_address (address_id, organization_id, type) VALUES(1, 1, 'DEFAULT');
INSERT INTO digitalsky.ds_user (id, full_name, email, account_verification_token, password_hash, account_verified)
VALUES(3, 'OrgOperator', 'vardhan@inteamo.in', '2b7d61de-9307-4385-a5ad-b77ea014cc0e', '$2a$10$JvjGnZ2i7loM6G82PyoNcuQmlIV0Wt.QACIDSwbNcKrfVZ1xb36Zu', 1);
INSERT INTO digitalsky.ds_organization_operator (RESOURCE_OWNER_ID, STATUS, BUSINESS_IDENTIFIER)
values (3, 'DEFAULT', 'a2c3b6e79c6042768ec57b8ae3f4bda4');
INSERT INTO digitalsky.ds_organization_address (address_id, organization_id) VALUES(1, 1);