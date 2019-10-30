-- +goose Up
-- +goose StatementBegin
CREATE TABLE users (
   id INT NOT NULL AUTO_INCREMENT,
   name varchar(255) DEFAULT NULL,
   age varchar(255) DEFAULT NULL,
   created_at datetime DEFAULT NULL,
   updated_at datetime DEFAULT NULL,
   deleted_at timestamp NULL DEFAULT NULL,
   INDEX user_id (id),
   PRIMARY KEY(id)
) ENGINE = InnoDB DEFAULT CHARSET=utf8mb4;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DROP TABLE users;
-- +goose StatementEnd
