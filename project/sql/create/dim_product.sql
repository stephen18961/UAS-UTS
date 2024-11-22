CREATE TABLE dim_product (
    PRODUCT_KEY INT PRIMARY KEY,
    PRODUCT_NAME VARCHAR(100),
    PLU CHAR(8),
    DATE_KEY INT,
    CATEGORY_DESC VARCHAR(50),
    SIZE VARCHAR(20),
    TOTAL_PRICE_IDR DECIMAL(10, 2)
);

INSERT INTO dim_product (PRODUCT_KEY, PRODUCT_NAME, PLU, DATE_KEY, CATEGORY_DESC, SIZE, TOTAL_PRICE_IDR)
VALUES
(1, 'Brokoli', '00000001', 20241119, 'Vegetables', '1g', 107),
(2, 'G/F UHT F/CRM950', '00000002', 20241119, 'Dairy', '1 unit', 23990),
(3, 'Diamond UHT Cho 1L', '00000003', 20241119, 'Dairy', '1 unit', 21990),
(4, 'La Fonte Macaroni', '00000004', 20241119, 'Pasta', '1 pack', 8990),
(5, 'RTE Nasi Ayam Geprek', '00000005', 20241119, 'Ready-to-Eat', '1 pack', 16450),
(6, 'PRB Superior 150ml', '00000006', 20241119, 'Beverages', '1 botol', 17950),
(7, 'Wortel Berastagi', '00000007', 20241119, 'Vegetables', '1g', 103),
(8, 'K/G Malkist Aroni', '00000008', 20241119, 'Snacks', '1 pack', 8990),
(9, 'Energen Vanilla 10', '00000009', 20241119, 'Beverages', '10 sachets', 22790),
(10, 'Sedaap M/G A/Kris', '00000010', 20241119, 'Seasoning', '1 unit', 3100),
(11, 'Kraft Cheddar CH1', '00000011', 20241119, 'Dairy', '1 unit', 23990),
(12, 'Jamur ENOKIDK100', '00000012', 20241119, 'Vegetables', '1 unit', 5990),
(13, 'Dada Ayam Fillet', '00000013', 20241119, 'Meat', '1g', 749),
(14, 'Saori Saus Tiram', '00000014', 20241119, 'Condiment', '1 unit', 12390),
(15, 'Buah Naga Merah', '00000015', 20241119, 'Fruits', '1g', 349),
(16, 'Telur Ayam Negeri', '00000016', 20241119, 'Eggs', '1g', 269.5),
(17, 'Kanzler Sngls Keju', '00000017', 20241119, 'Snacks', '1 unit', 8690);
