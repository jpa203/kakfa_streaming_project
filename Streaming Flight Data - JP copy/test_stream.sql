CREATE STREAM flight_data (
    flight_date VARCHAR, 
    flight_status VARCHAR, 
    departure STRUCT<airport VARCHAR, timezone VARCHAR, iata VARCHAR, icao VARCHAR, terminal VARCHAR, gate VARCHAR, delay INT, scheduled VARCHAR, estimated VARCHAR, actual VARCHAR, estimated_runway VARCHAR, actual_runway VARCHAR>,
    arrival STRUCT<airport VARCHAR, timezone VARCHAR, iata VARCHAR, icao VARCHAR, terminal VARCHAR, gate VARCHAR, baggage VARCHAR, delay INT, scheduled VARCHAR, estimated VARCHAR, actual VARCHAR, estimated_runway VARCHAR, actual_runway VARCHAR>,
    airline VARCHAR,
    flight STRUCT<number VARCHAR, iata VARCHAR, icao VARCHAR, codeshared VARCHAR>,
    aircraft VARCHAR,
    live VARCHAR,
    destination VARCHAR,
    country VARCHAR,
    arrival_airport VARCHAR,
    schedule_arrive VARCHAR,
    temperature INT,
    description ARRAY<VARCHAR>,
    wind_speed INT,
    wind_degree INT,
    humidity INT,
    feelslike INT,
    visibility INT,
    cloud_cover INT,
    id VARCHAR,
    fleet_average_age VARCHAR,
    airline_id VARCHAR,
    callsign VARCHAR,
    hub_code VARCHAR,
    iata_code VARCHAR,
    icao_code VARCHAR,
    country_iso2 VARCHAR,
    date_founded VARCHAR,
    iata_prefix_accounting VARCHAR,
    airline_name VARCHAR,
    country_name VARCHAR,
    fleet_size VARCHAR,
    status VARCHAR,
    type VARCHAR,
    capital VARCHAR,
    currency_code VARCHAR,
    fips_code VARCHAR,
    country_iso3 VARCHAR,
    continent VARCHAR,
    country_id VARCHAR,
    currency_name VARCHAR,
    country_iso_numeric VARCHAR,
    phone_prefix VARCHAR,
    population VARCHAR
) WITH (
    KAFKA_TOPIC='flights', 
    VALUE_FORMAT='JSON');