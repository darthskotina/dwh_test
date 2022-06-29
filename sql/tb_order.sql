-- ----------------------------------------------------------
-- Предполагаемое количество записей: 210,000,000 строк
-- Глубина: 3 года
-- ----------------------------------------------------------

-- Таблица торговых операций клиентов
-- ----------------------------------------------------------
CREATE TABLE stage.tb_order (
  user_uid            		UUID NOT NULL,                          -- Идентификатор пользователя
  account             		INTEGER NOT NULL,                       -- Счет клиента с которого совершается торговая операция
  order_open_date     		TIMESTAMP WITHOUT TIME ZONE NOT NULL,           -- Метка времени открытия торговой операции
  order_close_date    		TIMESTAMP WITHOUT TIME ZONE NOT NULL,           -- Метка времени закрытия торговой операции
  amount              		NUMERIC NOT NULL                        -- Сумма среств по тороговой операции
);

COMMENT ON TABLE stage.tb_order IS 'Торговые операций клиентов';

CREATE UNIQUE INDEX ON stage.tb_order (account);
