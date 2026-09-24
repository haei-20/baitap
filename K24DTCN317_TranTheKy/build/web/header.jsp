<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Trang web cá nhân của ${hoTen} - ${maSV}">
    <meta name="author" content="${hoTen}">
    <title>${pageTitle} | ${hoTen}</title>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Be+Vietnam+Pro:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="css/style.css">
    <link rel="icon" type="image/png" href="images/Ảnh chụp màn hình 2026-09-24 231336.png">
</head>
<body>

<header class="site-header" id="siteHeader">
    <div class="container header-inner">

        <a href="index.jsp" class="brand">
            <span class="brand-mark">&#9733;</span>
            <span class="brand-text">
                <strong>${hoTen}</strong>
                <small>${maSV}</small>
            </span>
        </a>

        <button class="nav-toggle" id="navToggle" aria-label="Mở menu" aria-expanded="false">
            <span></span><span></span><span></span>
        </button>

        <nav class="main-nav" id="mainNav">
            <ul>
                <li><a href="index.jsp" class="${activePage == 'index' ? 'active' : ''}">Trang chủ</a></li>
                <li><a href="sothich.jsp" class="${activePage == 'sothich' ? 'active' : ''}">Sở thích</a></li>
                <li><a href="dinhhuong.jsp" class="${activePage == 'dinhhuong' ? 'active' : ''}">Định hướng</a></li>
                <li><a href="lienhe.jsp" class="${activePage == 'lienhe' ? 'active' : ''}">Liên hệ</a></li>
            </ul>
        </nav>

    </div>
</header>

<main class="site-main">
