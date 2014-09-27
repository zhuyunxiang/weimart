CREATE TABLE weimart_user(
	user_id INT NOT NULL PRIMARY KEY,
	user_name VARCHAR(16) NOT NULL,
	user_pwd VARCHAR(64) NOT NULL,
	user_email VARCHAR(64),
	user_wechat_key VARCHAR(256),
	user_gender VARCHAR(8) NOT NULL,
	user_full_name VARCHAR (16) NOT NULL,
	user_telephone VARCHAR (11) NOT NULL,
	user_regist_time TIMESTAMP NOT NULL,
	user_last_updated TIMESTAMP NOT NULL,
	user_last_logined TIMESTAMP NOT NULL,
	user_is_deleted INT
)
