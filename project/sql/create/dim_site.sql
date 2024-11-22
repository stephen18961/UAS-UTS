CREATE TABLE dim_site (
    SITE_ID CHAR(5) PRIMARY KEY,
    SITE_DESC VARCHAR(100),
    SITE_ALIAS VARCHAR(10),
    REGION VARCHAR(50),
    ADDRESS VARCHAR(150),
    CITY VARCHAR(50),
    OPEN_DATE DATETIME,
    CLOSING_DATE DATETIME NULL
);

INSERT INTO dim_site (SITE_ID, SITE_DESC, SITE_ALIAS, REGION, ADDRESS, CITY, OPEN_DATE, CLOSING_DATE)
VALUES
('SI001', 'Super Indo Kalimalang', 'SI-KML', 'Jakarta', 'Jl. Kalimalang Raya No.10', 'Jakarta Timur', '2015-04-15 00:00:00', NULL),
('SI002', 'Super Indo Sunter', 'SI-SUN', 'Jakarta', 'Jl. Danau Sunter Barat No.17', 'Jakarta Utara', '2018-06-20 00:00:00', NULL),
('SI003', 'Super Indo Pasteur', 'SI-PAS', 'Jawa Barat', 'Jl. Dr. Djunjunan No.89', 'Bandung', '2014-02-10 00:00:00', NULL),
('SI004', 'Super Indo Ngagel', 'SI-NGG', 'Jawa Timur', 'Jl. Ngagel Jaya Selatan No.12', 'Surabaya', '2016-11-25 00:00:00', NULL),
('SI005', 'Super Indo Malioboro', 'SI-MALI', 'Yogyakarta', 'Jl. Malioboro No.50', 'Yogyakarta', '2017-03-05 00:00:00', NULL),
('SI006', 'Super Indo Tebet', 'SI-TBT', 'Jakarta', 'Jl. Tebet Raya No.45', 'Jakarta Selatan', '2013-08-01 00:00:00', NULL),
('SI007', 'Super Indo Kemang', 'SI-KMG', 'Jakarta', 'Jl. Kemang Raya No.25', 'Jakarta Selatan', '2019-07-10 00:00:00', NULL),
('SI008', 'Super Indo Sudirman', 'SI-SDR', 'Bali', 'Jl. Sudirman No.15', 'Denpasar', '2020-12-15 00:00:00', NULL),
('SI009', 'Super Indo Palembang', 'SI-PLB', 'Sumatera Selatan', 'Jl. Basuki Rahmat No.77', 'Palembang', '2012-01-20 00:00:00', '2023-05-31 00:00:00'),
('SI010', 'Super Indo Makassar', 'SI-MKS', 'Sulawesi Selatan', 'Jl. Urip Sumoharjo No.90', 'Makassar', '2018-09-10 00:00:00', NULL);
