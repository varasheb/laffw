CREATE TABLE la5fw(
    Hw_version VARCHAR(50),
    Laffw VARCHAR(255),
    Laffw_old jSON,
    Canfw VARCHAR(255),
    Canfw_old jSON, -- [{file:1234 status:Stopped},{file:12345 status :Running}]
    created_at BIGINT DEFAULT CAST(
        EXTRACT(
            EPOCH FROM NOW()
        ) * 1000 AS BIGINT
    ) NOT NULL,
    updated_at BIGINT DEFAULT CAST(
        EXTRACT(
            EPOCH FROM NOW()
        ) * 1000 AS BIGINT
    ) NOT NULL,
    updated_by VARCHAR(255),
    isVerfied BOOLEAN,
)


