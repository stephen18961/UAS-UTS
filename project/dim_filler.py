import mysql.connector
from faker import Faker
import random

# Konfigurasi database
db_config = {
    "host": "localhost",  # Ganti sesuai konfigurasi Anda
    "user": "root",       # Ganti dengan user MySQL Anda
    "password": "root",  # Ganti dengan password MySQL Anda
    "database": "scymart"
}

# Koneksi ke database
conn = mysql.connector.connect(**db_config)
cursor = conn.cursor()

# Inisialisasi Faker
fake = Faker()

# Fungsi untuk menyuntikkan mock data ke tabel dim_product
def populate_dim_product(num_records=20):
    print("Inserting data into dim_product...")
    for _ in range(num_records):
        product_key = _
        product_name = fake.word().capitalize() + " " + fake.word().capitalize()
        plu = fake.unique.random_int(min=100000, max=999999)
        date_key = fake.date(pattern="%Y%m%d", end_datetime=None).replace("-", "")
        kategori_desc = random.choice(["Vegetables", "Dairy", "Pasta", "Beverages", "Snacks", "Meat", "Fruits", "Eggs", "Condiment"])
        size = random.choice(["1g", "1 unit", "1 pack", "10 sachets", "1 botol"])
        price_idr = round(random.uniform(500, 50000), 2)

        query = """
        INSERT INTO dim_product (Product_Key, Product_Name, PLU, Date_Key, Kategori_Desc, Size, Price_IDR)
        VALUES (%s, %s, %s, %s, %s, %s, %s);
        """
        values = (product_key, product_name, plu, date_key, kategori_desc, size, price_idr)
        cursor.execute(query, values)
    conn.commit()

# Fungsi untuk menyuntikkan mock data ke tabel dim_date
def populate_dim_date(start_year=2020, end_year=2024):
    print("Inserting data into dim_date...")
    for year in range(start_year, end_year + 1):
        for month in range(1, 13):
            for day in range(1, 28):  # Menghindari tanggal yang tidak valid
                date_key = f"{year:04d}{month:02d}{day:02d}"
                full_date = f"{year}-{month:02d}-{day:02d}"
                month_name = fake.month_name()
                week = (day // 7) + 1
                quarter = (month - 1) // 3 + 1

                query = """
                INSERT INTO dim_date (Date_Key, Full_Date, Day, Month, Month_Name, Year, Week, Quarter)
                VALUES (%s, %s, %s, %s, %s, %s, %s, %s);
                """
                values = (date_key, full_date, day, month, month_name, year, week, quarter)
                cursor.execute(query, values)
    conn.commit()

# Fungsi untuk menyuntikkan mock data ke tabel dim_site
def populate_dim_site(num_records=10):
    print("Inserting data into dim_site...")
    for site_key in range(1, num_records + 1):
        site_name = f"Superindo {fake.city()}"
        region = fake.state()
        city = fake.city()
        country = "Indonesia"
        open_date = fake.date_between(start_date="-10y", end_date="today")
        manager_name = fake.name()

        query = """
        INSERT INTO dim_site (Site_Key, Site_Name, Region, City, Country, Open_Date, Manager_Name)
        VALUES (%s, %s, %s, %s, %s, %s, %s);
        """
        values = (site_key, site_name, region, city, country, open_date, manager_name)
        cursor.execute(query, values)
    conn.commit()

# Eksekusi semua fungsi
try:
    populate_dim_product(num_records=50)
    populate_dim_date(start_year=2020, end_year=2023)
    populate_dim_site(num_records=15)
    print("Mock data successfully inserted!")
except Exception as e:
    print(f"Error: {e}")
finally:
    cursor.close()
    conn.close()
