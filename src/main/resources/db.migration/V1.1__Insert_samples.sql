insert into "categories"
values (1, 'Food', current_timestamp, current_timestamp),
       (2, 'Treats', current_timestamp, current_timestamp),
       (3, 'Toys', current_timestamp, current_timestamp),
       (4, 'Accessories', current_timestamp, current_timestamp);

insert into "products"
values (1, 1, 'Beef & Vegetable Stew', 'Original Adult Wet Dog Food - 10 Oz., Stew', 3.09, 0, 'AVAILABLE', current_timestamp, current_timestamp),
       (2, 1, 'Chicken & Pasta Stew', 'Original Adult Wet Dog Food - 10 Oz., Stew', 3.09, 0, 'AVAILABLE', current_timestamp, current_timestamp),
       (3, 2, 'Purina Pro Plan Focus Adult Dry Dog Food - Sensitive Skin & Stomach, Salmon & Rice', 'Purina Pro Plan Salmon & Rice', 18.98, 0, 'AVAILABLE', current_timestamp, current_timestamp),
       (4, 1, 'Inaba Churu Bites Dog Treats - Chicken', 'Churu Bites4', 8.99, 0, 'AVAILABLE', current_timestamp, current_timestamp);

insert into "reviews"
values (1, 'Good but not perfect', 'I like the product but I found that it''s not perfect', 4, current_timestamp, current_timestamp),
       (2, 'Excellent', 'Wonderful product', 5, current_timestamp, current_timestamp),
       (3, 'Good but very expensive', 'I like the product but not the price', 4, current_timestamp, current_timestamp);

insert into "products_reviews"
values (1, 1),
       (1, 2),
       (2, 3);

insert into "customers"
values (1, 'Jason', 'Bourne', '303-543-0923', 'jason.bourne@gmail.com', TRUE, current_timestamp, current_timestamp),
       (2, 'Homer', 'Simpson', '720-558-2898', 'homer.simpson@gmail.com', TRUE, current_timestamp, current_timestamp),
       (3, 'Peter', 'Quinn', '303-991-0123', 'peter.quinn@gmail.com', FALSE, current_timestamp, current_timestamp),
       (4, 'Saul', 'Berenson', '303-879-3298', 'saul.berenson@gmail.com', FALSE, current_timestamp, current_timestamp),
       (5, 'Jim', 'Beam', '303-112-2989', 'jim.beam@gmail.com', TRUE, current_timestamp, current_timestamp);

insert into "carts"
values (1, 1, 'NEW', current_timestamp, current_timestamp),
       (2, 2, 'NEW', current_timestamp, current_timestamp),
       (3, 3, 'NEW', current_timestamp, current_timestamp),
       (4, 4, 'NEW', current_timestamp, current_timestamp),
       (5, 5, 'NEW', current_timestamp, current_timestamp);

insert into payments
values (1, 'eaff9db9dc227f07c43814fd267c75193ae6d9b2', 'ACCEPTED', 21.99, current_timestamp, current_timestamp),
       (2, 'c863226d572c76e5d23125e1ba57a0cf4e8d3cb4', 'ACCEPTED', 14.56, current_timestamp, current_timestamp),
       (3, 'ca1a25392f93506df32f089a6aad904bb85e380b', 'ACCEPTED', 7.00, current_timestamp, current_timestamp);

insert into "orders"
values (1, 1, 2, '601 Ohio Lane', NULL, 'Atlanta', 'GA', '31165', NULL, 'PAID', 24.00, current_timestamp, current_timestamp),
       (2, 2, 1, '30746 Sherman Alley', NULL, 'Saint Louis', 'MO', '63110', NULL, 'PAID', 11.95, current_timestamp, current_timestamp),
       (3, 3, NULL, '9 Waubesa Road', NULL, 'Newton', 'MA', '02458', NULL, 'CREATED', 12.00, current_timestamp, current_timestamp),
       (4, 4, NULL, '9 Waubesa Road', NULL, 'Newton', 'MA', '02458', NULL, 'CREATED', 12.00, current_timestamp, current_timestamp),
       (5, 5, 3, '9 Waubesa Road', NULL, 'Newton', 'MA', '02458', NULL, 'CREATED', 12.00, current_timestamp, current_timestamp);

insert into "order_items"
values (1, 1, 1, 1, current_timestamp, current_timestamp),
       (2, 1, 2, 2, current_timestamp, current_timestamp);