CREATE TABLE customers (
	customer_id varchar (50),
	customer_unique_id varchar(50),
	customer_zip_code int,
	customer_city varchar (50),
	customer_state varchar (50)
	);

CREATE TABLE geolocation (
	geolocation_zip_code_prefix int,
	geolocation_lat float,
	geolocation_Ing float,
	geolocation_city varchar (50),
	geolocation_state varchar (10)
	);

CREATE TABLE order_items (
	order_id varchar,
	order_item_id varchar (50),
	product_id varchar (50),
	seller_id varchar (50),
	shipping_limit_date timestamp,
	price float,
	freight_value float
        ) ;

CREATE TABLE order_payments (
	order_id varchar(50), 
	payment_sequential int, 
	payment_type varchar (50), 
	payment_installments int, 
	payment_value float
        );

CREATE TABLE reviews (
    review_id varchar (50),
	order_id varchar (50), 
	review_score int, 
	review_comment_title varchar (50), 
	review_comment_message varchar (500), 
	review_creation_date timestamp, 
	review_answer_timestamp timestamp
        );

CREATE TABLE orders (
	order_id VARCHAR(100),
	customer_id VARCHAR(100),
	order_status VARCHAR(50),
	order_purchase_timestamp TIMESTAMP,
	order_approved_at TIMESTAMP,
	order_delivered_carrier_date TIMESTAMP,
	order_delivered_customer_date TIMESTAMP,
	order_estimated_delivery_date TIMESTAMP
	);

CREATE TABLE products (
	product_id varchar(50),
	product_category_name VARCHAR(70),
	product_name_length int ,
	product_description_length int,
	product_photos_qty int,
	product_weight_g int ,
	product_length_cm int ,
	product_height_cm int ,
	product_width_cm int 
        ); 

CREATE TABLE sellers(
    seller_id varchar(50),
	seller_zip_code_prefix int,
	seller_city varchar (100) ,
	seller_state varchar(15)
	);

CREATE TABLE product_category_name_translation (
	product_category_name varchar(50),
	product_category_name_english varchar(70)
	);
