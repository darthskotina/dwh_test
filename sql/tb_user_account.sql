-- ----------------------------------------------------------
-- Предполагаемое количество записей: 4,000,000 строк
-- Глубина: 3 года
-- ----------------------------------------------------------

-- Таблица счетов с атрибутам клиентов
-- ----------------------------------------------------------
CREATE TABLE stage.tb_user_account (
    user_uid            UUID NOT NULL,                          -- Уникальный идентификатор клиента UUID.
    email               VARCHAR(320) NOT NULL,                  -- Адрес электронной почты, указанной при регистрации клиентом.
    phone               VARCHAR(20),                            -- Номер телефона, указанный при регистрации (свободный формат данных).
    registration_date   TIMESTAMP WITHOUT TIME ZONE NOT NULL,           -- Метка времени регистрации клиента (UTC).
    country             VARCHAR(2),                             -- Коды страны (стандарту ISO 3166-1 alpha-2), указанный при регистрации.
    account             INTEGER NOT NULL,                       -- Номер счета клиента.
    account_type        VARCHAR(20) NOT NULL,                   -- Тип счета клиента. 'real' - реальный торговый счет, 'demo' - тестовый счет.
    account_open_date   TIMESTAMP WITHOUT TIME ZONE NOT NULL            -- Метка времени открытия счета клиента (UTC).
);

COMMENT ON TABLE stage.tb_user_account IS 'Счета клиентов с атрибутам';
