CREATE TABLE books (
    id int AUTO_INCREMENT PRIMARY KEY,
    title varchar(255) NOT NULL,
    description varchar(255),
    author varchar(255),
    price decimal NOT NULL,
    stock int,
    publication_year int,
    created_at timestamp NOT NULL,
    update_at timestamp
);

-- Insert data dummy untuk tabel books
-- Author diulang agar bisa filter dan pagination terasa manfaatnya

INSERT INTO books (title, description, author, price, stock, publication_year, created_at) VALUES

-- Buku karya **Pramoedya Ananta Toer** (6 buku)
('Bumi Manusia', 'Romance sejarah kolonial Belanda', 'Pramoedya Ananta Toer', 85000, 10, 1980, NOW()),
('Anak Semua Bangsa', 'Lanjutan perjuangan Minke', 'Pramoedya Ananta Toer', 89000, 8, 1980, NOW()),
('Jejak Langkah', 'Perjuangan organisasi masa kolonial', 'Pramoedya Ananta Toer', 92000, 5, 1985, NOW()),
('Rumah Kaca', 'Konspirasi politik Hindia Belanda', 'Pramoedya Ananta Toer', 95000, 3, 1988, NOW()),
('Gadis Pantai', 'Kisah perempuan pesisir', 'Pramoedya Ananta Toer', 65000, 12, 1982, NOW()),
('Arus Balik', 'Epos sejarah Nusantara', 'Pramoedya Ananta Toer', 110000, 2, 1995, NOW()),

-- Buku karya **Andrea Hirata** (5 buku)
('Laskar Pelangi', 'Kisah 10 anak Belitong', 'Andrea Hirata', 75000, 20, 2005, NOW()),
('Sang Pemimpi', 'Lanjutan perjuangan Ikal', 'Andrea Hirata', 78000, 15, 2006, NOW()),
('Edensor', 'Petualangan Ikal di Eropa', 'Andrea Hirata', 80000, 10, 2007, NOW()),
('Maryamah Karpov', 'Misteri dan cinta Ikal', 'Andrea Hirata', 85000, 7, 2008, NOW()),
('Guru Aini', 'Kisah inspirasi guru', 'Andrea Hirata', 90000, 18, 2020, NOW()),

-- Buku karya **Tere Liye** (7 buku)
('Hafalan Shalat Delisa', 'Kisah anak korban tsunami', 'Tere Liye', 68000, 25, 2005, NOW()),
('Bidadari-bidadari Surga', 'Misteri keluarga', 'Tere Liye', 72000, 14, 2006, NOW()),
('Pergi', 'Perjalanan mencari jati diri', 'Tere Liye', 85000, 9, 2018, NOW()),
('Pulang', 'Kembali ke akar', 'Tere Liye', 88000, 11, 2019, NOW()),
('Rindu', 'Kisah perjalanan haji', 'Tere Liye', 78000, 13, 2014, NOW()),
('Tentang Kamu', 'Kisah cinta dan rahasia', 'Tere Liye', 95000, 6, 2016, NOW()),
('Negeri Para Bedebah', 'Kritik sosial ekonomi', 'Tere Liye', 89000, 8, 2012, NOW()),

-- Buku karya **Dee Lestari** (4 buku)
('Supernova: Kesatria, Putri, & Bintang Jatuh', 'Fiksi sains metafisika', 'Dee Lestari', 98000, 5, 2001, NOW()),
('Supernova: Akar', 'Misteri kesadaran', 'Dee Lestari', 102000, 4, 2002, NOW()),
('Supernova: Petir', 'Energi dan kehidupan', 'Dee Lestari', 105000, 3, 2004, NOW()),
('Perahu Kertas', 'Kisah cinta penulis muda', 'Dee Lestari', 79000, 15, 2009, NOW()),

-- Buku karya **Raditya Dika** (4 buku)
('Kambing Jantan', 'Cerita kuliah di Australia', 'Raditya Dika', 58000, 30, 2005, NOW()),
('Cinta Brontosaurus', 'Komedi romantis', 'Raditya Dika', 62000, 25, 2006, NOW()),
('Manusia Setengah Salmon', 'Humor kehidupan', 'Raditya Dika', 65000, 22, 2008, NOW()),
('Koala Kumal', 'Kisah patah hati', 'Raditya Dika', 68000, 28, 2015, NOW()),

-- Buku karya **Habiburrahman El Shirazy** (4 buku)
('Ayat-ayat Cinta', 'Romantis religius', 'Habiburrahman El Shirazy', 70000, 12, 2004, NOW()),
('Ketika Cinta Bertasbih 1', 'Drama cinta', 'Habiburrahman El Shirazy', 72000, 10, 2007, NOW()),
('Ketika Cinta Bertasbih 2', 'Lanjutan drama cinta', 'Habiburrahman El Shirazy', 74000, 9, 2008, NOW()),
('Bumi Cinta', 'Kisah cinta di Rusia', 'Habiburrahman El Shirazy', 68000, 11, 2010, NOW());
