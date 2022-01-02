<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="SPA Example">
    <meta name="keywords" content="HTML, CSS, JavaScript">
    <meta name="author" content="Handri Hermawan">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="/src/img/icon.ico" type="image/gif" sizes="16x16">
    <link href="https://cdn.jsdelivr.net/npm/boxicons@2.0.5/css/boxicons.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/app.css">

    <title>Cokini - Crowdfunding Masa Kini</title>
</head>

<body>
    <header class="as-header" id="header">
        <nav class="as-nav as-container">
            <a href="#" class="as-nav__logo">Cokini</a>

            <div class="as-nav__menu" id="nav-menu">
                <ul class="as-nav__list">
                    <li class="as-nav__item"><a href="index.php" class="as-nav__link active-link">Home</a></li>
                    <li class="as-nav__item"><a href="#galeri" class="as-nav__link">Galeri</a></li>
                    <li class="as-nav__item"><a href="#Transaksi" class="as-nav__link">Transaksi</a></li>
                </ul>
            </div>

            <div class="as-nav__toggle" id="nav-toggle">
                <i class="bx bx-menu"></i>
            </div>
        </nav>
    </header>
    
    <main class="as-main">
        <section id="home" class="as-hero">
            <div class="as-hero__container as-container">
                <div class="as-hero__data">
                    <h1 class="as-hero__title">Mulai berinvestasi sekarang</h1>
                    <h2 class="as-hero__subtitle">Temukan usaha favoritmu dan investasi sekarang juga</h2>
                    <a href="login.php" class="as-button">Investasi</a>
                    <a class="as-button" href="register.php">Signup</a>
                </div>

                <img src="src/img/small-business-manager-his-workshop1.jpg" loading="lazy" class="as-hero__img" alt="hero">
            </div>
        </section>

        <section id="galeri" class="as-section">
            <div class="as-container">
                <h2 class="as-section__title">Galeri UKM</h2>
                <p class="as-section__description">Berbagai jenis usaha yang bisa anda pilih</p>
                <div class="as-grid">
                    <article class="as-grid__card">
                        <img src="src/img/usaha/169NjLeJ8n65c.png" class="as-grid__image" loading="lazy" alt="contoh">
                        <div class="as-grid__card-wrapper">
                            <h3 class="as-grid__title">Rindu Candu Milk</h3>
                            <p class="as-grid__description">F&B</p>
                            <div class="as-grid__button-wrapper">
                                <a href="login.php" class="as-grid__button">Lihat Detail</a>
                            </div>
                        </div>
                    </article>
                    <article class="as-grid__card">
                        <img src="src/img/usaha/16hfGLpS9fVQA1.jpg" class="as-grid__image" loading="lazy" alt="contoh">
                        <div class="as-grid__card-wrapper">
                            <h3 class="as-grid__title">Nasi Balap</h3>
                            <p class="as-grid__description">F&B.</p>
                            <div class="as-grid__button-wrapper">
                                <a href="login.php" class="as-grid__button">Lihat Detail</a>
                            </div>
                        </div>
                    </article>
                    <article class="as-grid__card">
                        <img src="src/img/usaha/kjashaaksl.jpeg" class="as-grid__image" loading="lazy" alt="contoh">
                        <div class="as-grid__card-wrapper">
                            <h3 class="as-grid__title">Susu Kedelai</h3>
                            <p class="as-grid__description">F&B</p>
                            <div class="as-grid__button-wrapper">
                                <a href="login.php" class="as-grid__button">Lihat Detail</a>
                            </div>
                            
                        </div>
                    </article>
                </div>
                <div class="as-grid__button-wrapper" align="center">
                                <a href="product-list.php" >Lihat Semua</a>
                            </div>
            </div>
        </section>

        <section id="#Transaksi" class="as-section as-section-soft">
            <div class="as-container">
                <h2 class="as-section__title">Partner Pembayaran</h2>
                <p class="as-section__description">Tersedia berbagai jenis pembayaran yang bisa anda gunakan</p>
                <ul class="as-flex">
                    <li class="as-flex__item">
                        <img src="src/img/payment/shopeepay.svg" class="as-flex__image" alt="contoh">
                    </li>
                    <li class="as-flex__item">
                        <img src="src/img/payment/atm-bersama.svg" class="as-flex__image" alt="contoh">
                    </li>
                    <li class="as-flex__item">
                        <img src="src/img/payment/bca.svg" class="as-flex__image" alt="contoh">
                    </li>
                    <li class="as-flex__item">
                        <img src="src/img/payment/cimb.svg" class="as-flex__image" alt="contoh">
                    </li>
                    <li class="as-flex__item">
                        <img src="src/img/payment/dana.svg" class="as-flex__image" alt="contoh">
                    </li>
                    <li class="as-flex__item">
                        <img src="src/img/payment/gopay.svg" class="as-flex__image" alt="contoh">
                    </li>
                    <li class="as-flex__item">
                        <img src="src/img/payment/ovo.svg" class="as-flex__image" alt="contoh">
                    </li>
                    <li class="as-flex__item">
                        <img src="src/img/payment/mandiri.svg" class="as-flex__image" alt="contoh">
                    </li>
                </ul>
            </div>
        </section>
    </main>

    <footer id="footer" class="as-section as-footer">
        <div class="as-container">
            <div class="as-footer__container">
                <div class="as-footer__content">
                    <a href="#" class="as-footer__social" aria-label="socmed"><i class="bx bxl-facebook"></i></a>
                    <a href="#" class="as-footer__social" aria-label="socmed"><i class="bx bxl-instagram"></i></a>
                    <a href="#" class="as-footer__social" aria-label="socmed"><i class="bx bxl-twitter"></i></a>
                    <a href="#" class="as-footer__social" aria-label="socmed"><i class="bx bxl-youtube"></i></a>
                </div>

                <div class="as-footer__content">
                    <a href="#" class="as-footer__link">Hubungi Kami</a>
                </div>

                <div class="as-footer__content">
                    <a href="#" class="as-footer__link">Syarat & Ketentuan</a>
                </div>

                <div class="as-footer__content">
                    <a href="#" class="as-footer__link">Kebijakan Privasi</a>
                </div>
            </div>
            <p class="as-footer__copy">&#169; 2021 Cokini. All right reserved</p>
        </div>
    </footer>

    <script src="dist/js/app.js"></script>
</body>

</html>