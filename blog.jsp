<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Global Visa LTD - Blog sur l'immigration</title>
    
    <!-- CSS Links -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600;700&family=Playfair+Display:wght@400;500;600;700&display=swap" rel="stylesheet">
    
    <style>
        /* ========== GLOBAL STYLES ========== */
        :root {
            --primary-color: #E67E22;
            --secondary-color: #8B4513;
            --light-color: #FFFFFF;
            --dark-color: #333333;
            --gray-color: #F5F5F5;
            --text-color: #555555;
            --font-main: 'Montserrat', sans-serif;
            --font-heading: 'Playfair Display', serif;
            --transition: all 0.3s ease;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: var(--font-main);
            color: var(--text-color);
            line-height: 1.6;
            background-color: #f9f9f9;
            padding-top: 90px;
        }

        .container {
            width: 100%;
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 20px;
        }

        /* ========== HEADER & NAVIGATION ========== */
        .header {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            background: rgba(255, 255, 255, 0.98);
            backdrop-filter: blur(10px);
            -webkit-backdrop-filter: blur(10px);
            box-shadow: 0 4px 30px rgba(0, 0, 0, 0.08);
            z-index: 1000;
            padding: 15px 0;
            transition: var(--transition);
            border-bottom: 1px solid rgba(255, 255, 255, 0.3);
        }

        .header.scrolled {
            padding: 10px 0;
            background: rgba(255, 255, 255, 0.96);
            box-shadow: 0 2px 20px rgba(0, 0, 0, 0.06);
        }

        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .logo-img {
            height: 60px;
            transition: transform 0.3s;
        }

        .logo-tobi:hover .logo-img {
            transform: scale(1.05);
        }

        .nav-links {
            display: flex;
            list-style: none;
        }

        .nav-links li {
            margin-left: 25px;
            position: relative;
        }

        .nav-links a {
            text-decoration: none;
            color: var(--dark-color);
            font-weight: 500;
            transition: var(--transition);
            display: flex;
            align-items: center;
            gap: 8px;
            font-size: 0.95rem;
        }

        .nav-links a:hover {
            color: var(--primary-color);
        }

        .hamburger {
            display: none;
            cursor: pointer;
            font-size: 24px;
            color: var(--dark-color);
        }

        /* Dropdown Menu */
        .dropdown-content {
            position: absolute;
            top: 100%;
            left: 0;
            background: var(--light-color);
            min-width: 240px;
            box-shadow: 0 12px 24px rgba(0, 0, 0, 0.15);
            border-radius: 0 0 10px 10px;
            z-index: 1000;
            padding: 10px 0;
            opacity: 0;
            visibility: hidden;
            transform: translateY(10px);
            transition: var(--transition);
        }

        .dropdown:hover .dropdown-content {
            opacity: 1;
            visibility: visible;
            transform: translateY(0);
        }

        .dropdown-content li {
            margin: 0;
            padding: 0;
        }

        .dropdown-content a {
            padding: 12px 20px;
            color: var(--dark-color);
            display: flex;
            align-items: center;
            gap: 12px;
            transition: var(--transition);
        }

        .dropdown-content a:hover {
            background-color: rgba(230, 126, 34, 0.1);
            color: var(--primary-color);
            padding-left: 25px;
        }

        .dropdown-icon {
            transition: transform 0.3s;
        }

        .dropdown:hover .dropdown-icon {
            transform: rotate(180deg);
        }

        /* ========== HERO SECTION ========== */
        .blog-hero {
            background: linear-gradient(rgba(139, 69, 19, 0.8), rgba(139, 69, 19, 0.8)), 
                        url('https://images.unsplash.com/photo-1454165804606-c3d57bc86b40?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80');
            background-size: cover;
            background-position: center;
            height: 400px;
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
            color: var(--light-color);
            position: relative;
            overflow: hidden;
        }

        .blog-hero::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: linear-gradient(135deg, rgba(230, 126, 34, 0.3) 0%, rgba(139, 69, 19, 0.3) 100%);
            z-index: 1;
        }

        .hero-content {
            position: relative;
            z-index: 2;
            max-width: 800px;
            padding: 0 20px;
            animation: fadeInUp 1s ease;
        }

        @keyframes fadeInUp {
            from {
                opacity: 0;
                transform: translateY(30px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        .hero-content h1 {
            font-family: var(--font-heading);
            font-size: 3rem;
            margin-bottom: 20px;
            text-shadow: 0 2px 4px rgba(0, 0, 0, 0.3);
        }

        .hero-content p {
            font-size: 1.2rem;
            margin-bottom: 30px;
        }

        /* ========== BREADCRUMB ========== */
        .breadcrumb {
            padding: 20px 0;
            background-color: var(--light-color);
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.05);
        }

        .breadcrumb-list {
            display: flex;
            list-style: none;
        }

        .breadcrumb-item {
            margin-right: 10px;
            font-size: 0.9rem;
        }

        .breadcrumb-item:not(:last-child)::after {
            content: '/';
            margin-left: 10px;
            color: var(--text-color);
        }

        .breadcrumb-item a {
            color: var(--primary-color);
            text-decoration: none;
            transition: var(--transition);
        }

        .breadcrumb-item a:hover {
            color: var(--secondary-color);
            text-decoration: underline;
        }

        /* ========== BLOG CONTENT ========== */
        .blog-intro {
            text-align: center;
            padding: 60px 0 40px;
        }

        .blog-intro h2 {
            font-family: var(--font-heading);
            font-size: 2.5rem;
            color: var(--secondary-color);
            margin-bottom: 20px;
            position: relative;
        }

        .blog-intro h2::after {
            content: '';
            display: block;
            width: 80px;
            height: 3px;
            background-color: var(--primary-color);
            margin: 20px auto;
        }

        .blog-intro p {
            max-width: 700px;
            margin: 0 auto 40px;
            font-size: 1.1rem;
        }

        /* Blog Grid */
        .blog-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(350px, 1fr));
            gap: 30px;
            padding: 40px 0;
        }

        .blog-card {
            background-color: var(--light-color);
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.08);
            transition: var(--transition);
            position: relative;
        }

        .blog-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 15px 40px rgba(0, 0, 0, 0.15);
        }

        .blog-badge {
            position: absolute;
            top: 20px;
            right: 20px;
            background-color: var(--primary-color);
            color: var(--light-color);
            padding: 5px 15px;
            border-radius: 50px;
            font-size: 0.8rem;
            font-weight: 600;
            z-index: 2;
        }

        .blog-image {
            height: 250px;
            background-size: cover;
            background-position: center;
            position: relative;
        }

        .blog-image::after {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: linear-gradient(to bottom, rgba(0,0,0,0.1) 0%, rgba(0,0,0,0.7) 100%);
        }

        .blog-content {
            padding: 30px;
        }

        .blog-meta {
            display: flex;
            align-items: center;
            margin-bottom: 15px;
            font-size: 0.9rem;
        }

        .blog-date {
            background-color: var(--primary-color);
            color: var(--light-color);
            padding: 3px 10px;
            border-radius: 5px;
            margin-right: 15px;
        }

        .blog-category {
            color: var(--secondary-color);
            font-weight: 500;
        }

        .blog-title {
            font-family: var(--font-heading);
            font-size: 1.5rem;
            color: var(--secondary-color);
            margin-bottom: 15px;
            transition: var(--transition);
        }

        .blog-card:hover .blog-title {
            color: var(--primary-color);
        }

        .blog-excerpt {
            margin-bottom: 20px;
        }

        .read-more {
            display: inline-flex;
            align-items: center;
            color: var(--primary-color);
            text-decoration: none;
            font-weight: 600;
            transition: var(--transition);
        }

        .read-more i {
            margin-left: 8px;
            transition: var(--transition);
        }

        .read-more:hover {
            color: var(--secondary-color);
        }

        .read-more:hover i {
            transform: translateX(5px);
        }

        /* ========== TESTIMONIALS SECTION ========== */
        .testimonials-section {
            background-color: var(--secondary-color);
            color: var(--light-color);
            padding: 80px 0;
            position: relative;
            overflow: hidden;
        }

        .testimonials-section h2 {
            color: var(--light-color);
            text-align: center;
            margin-bottom: 40px;
        }

        .testimonials-section h2::after {
            background-color: var(--primary-color);
        }

        .testimonial-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 30px;
        }

        .testimonial-card {
            background-color: rgba(255, 255, 255, 0.1);
            padding: 30px;
            border-radius: 10px;
            transition: var(--transition);
        }

        .testimonial-card:hover {
            transform: translateY(-5px);
            background-color: rgba(255, 255, 255, 0.15);
        }

        .testimonial-text {
            font-style: italic;
            margin-bottom: 20px;
            position: relative;
        }

        .testimonial-text::before {
            content: '"';
            font-family: var(--font-heading);
            font-size: 4rem;
            color: rgba(255, 255, 255, 0.1);
            position: absolute;
            top: -20px;
            left: -10px;
            line-height: 1;
        }

        .testimonial-author {
            display: flex;
            align-items: center;
        }

        .author-image {
            width: 60px;
            height: 60px;
            border-radius: 50%;
            object-fit: cover;
            margin-right: 15px;
            border: 3px solid var(--primary-color);
        }

        .author-info h4 {
            font-size: 1.1rem;
            margin-bottom: 5px;
        }

        .author-info p {
            font-size: 0.9rem;
            opacity: 0.8;
        }

        /* ========== VIDEO SECTION ========== */
        .video-section {
            padding: 80px 0;
            background-color: var(--gray-color);
        }

        .video-section h2 {
            text-align: center;
            margin-bottom: 40px;
        }

        .video-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 30px;
        }

        .video-card {
            position: relative;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            transition: var(--transition);
        }

        .video-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 15px 40px rgba(0, 0, 0, 0.15);
        }

        .video-thumbnail {
            height: 200px;
            background-size: cover;
            background-position: center;
            position: relative;
        }

        .video-thumbnail::after {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.3);
        }

        .play-button {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            width: 60px;
            height: 60px;
            background-color: var(--primary-color);
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            z-index: 2;
            transition: var(--transition);
        }

        .play-button i {
            color: var(--light-color);
            font-size: 1.5rem;
            margin-left: 5px;
        }

        .video-card:hover .play-button {
            transform: translate(-50%, -50%) scale(1.1);
            background-color: var(--secondary-color);
        }

        .video-info {
            padding: 20px;
            background-color: var(--light-color);
        }

        .video-title {
            font-family: var(--font-heading);
            font-size: 1.2rem;
            color: var(--secondary-color);
            margin-bottom: 10px;
        }

        /* ========== AGENCIES SECTION ========== */
        .agencies-section {
            padding: 80px 0;
            background-color: var(--light-color);
        }

        .agencies-section h2 {
            text-align: center;
            margin-bottom: 40px;
        }

        .agencies-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 30px;
        }

        .agency-card {
            background-color: var(--gray-color);
            padding: 30px;
            border-radius: 10px;
            text-align: center;
            transition: var(--transition);
        }

        .agency-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
        }

        .agency-icon {
            font-size: 3rem;
            color: var(--primary-color);
            margin-bottom: 20px;
        }

        .agency-title {
            font-family: var(--font-heading);
            font-size: 1.5rem;
            color: var(--secondary-color);
            margin-bottom: 15px;
        }

        .agency-description {
            margin-bottom: 20px;
        }

        .agency-contact {
            margin-top: 20px;
        }

        .contact-btn {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            background-color: var(--primary-color);
            color: var(--light-color);
            padding: 10px 20px;
            border-radius: 50px;
            text-decoration: none;
            font-weight: 600;
            transition: var(--transition);
            gap: 8px;
        }

        .contact-btn:hover {
            background-color: var(--secondary-color);
            transform: translateY(-3px);
        }

        /* ========== NEWSLETTER SECTION ========== */
        .newsletter-section {
            background: linear-gradient(rgba(139, 69, 19, 0.9), rgba(139, 69, 19, 0.9)), 
                        url('https://images.unsplash.com/photo-1454165804606-c3d57bc86b40?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80');
            background-size: cover;
            background-position: center;
            color: var(--light-color);
            padding: 80px 0;
            text-align: center;
        }

        .newsletter-section h2 {
            color: var(--light-color);
            margin-bottom: 20px;
        }

        .newsletter-section h2::after {
            background-color: var(--light-color);
        }

        .newsletter-section p {
            max-width: 600px;
            margin: 0 auto 30px;
            font-size: 1.1rem;
        }

        .newsletter-form {
            display: flex;
            max-width: 500px;
            margin: 0 auto;
        }

        .newsletter-form input {
            flex: 1;
            padding: 15px;
            border: none;
            border-radius: 5px 0 0 5px;
            font-family: var(--font-main);
        }

        .newsletter-form button {
            background-color: var(--primary-color);
            color: var(--light-color);
            border: none;
            padding: 0 25px;
            border-radius: 0 5px 5px 0;
            cursor: pointer;
            transition: var(--transition);
            font-weight: 600;
        }

        .newsletter-form button:hover {
            background-color: var(--light-color);
            color: var(--primary-color);
        }
          /* Animation keyframes */
    @keyframes zoomFade {
        0% {
            transform: translateY(40px) scale(0.95);
            opacity: 0;
        }
        100% {
            transform: translateY(0) scale(1);
            opacity: 1;
        }
    }

    @keyframes fadeInUp {
        from {
            opacity: 0;
            transform: translateY(20px);
        }
        to {
            opacity: 1;
            transform: translateY(0);
        }
    }

    /* Delay animation for each card */
    .video-card:nth-child(1) {
        animation-delay: 0.3s;
    }
    .video-card:nth-child(2) {
        animation-delay: 0.6s;
    }
    .video-card:nth-child(3) {
        animation-delay: 0.9s;
    }

        /* ========== FOOTER ========== */
        .footer {
            background-color: var(--dark-color);
            color: var(--light-color);
            padding: 80px 0 0;
            position: relative;
        }

        .footer::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 5px;
            background: linear-gradient(90deg, var(--primary-color) 0%, var(--secondary-color) 100%);
        }

        .footer-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 40px;
            margin-bottom: 40px;
        }

        .footer-col h4 {
            font-family: var(--font-heading);
            font-size: 1.3rem;
            margin-bottom: 25px;
            position: relative;
            color: var(--light-color);
        }

        .footer-col h4::after {
            content: '';
            display: block;
            width: 50px;
            height: 2px;
            background-color: var(--primary-color);
            margin-top: 15px;
        }

        .footer-logo {
            font-size: 20px;
            font-weight: 700;
            color: var(--light-color);
            margin-top: 20px;
            display: flex;
            align-items: center;
        }

        .footer-logo i {
            margin-right: 10px;
            color: var(--primary-color);
            font-size: 24px;
        }

        .footer-col ul {
            list-style: none;
        }

        .footer-col li {
            margin-bottom: 15px;
        }

        .footer-col a {
            color: #bbb;
            text-decoration: none;
            transition: var(--transition);
        }

        .footer-col a:hover {
            color: var(--primary-color);
            padding-left: 5px;
        }

        /* Newsletter Form */
        .newsletter-form {
            display: flex;
            margin-top: 20px;
        }

        .newsletter-form input {
            flex: 1;
            padding: 12px;
            border: none;
            border-radius: 5px 0 0 5px;
            font-family: var(--font-main);
            background-color: rgba(255, 255, 255, 0.9);
        }

        .newsletter-form button {
            background-color: var(--primary-color);
            color: var(--light-color);
            border: none;
            padding: 0 15px;
            border-radius: 0 5px 5px 0;
            cursor: pointer;
            transition: var(--transition);
        }

        .newsletter-form button:hover {
            background-color: #d35400;
        }

        /* Footer Bottom */
        .footer-bottom {
            border-top: 1px solid rgba(255, 255, 255, 0.1);
            padding: 20px 0;
            text-align: center;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .legal-links {
            margin-top: 15px;
        }

        .legal-links a {
            color: #bbb;
            text-decoration: none;
            margin: 0 10px;
            font-size: 0.9rem;
            transition: var(--transition);
        }

        .legal-links a:hover {
            color: var(--primary-color);
        }

        /* ========== RESPONSIVE STYLES ========== */
        @media (max-width: 992px) {
            .hero-content h1 {
                font-size: 2.5rem;
            }
            
            .blog-grid {
                grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            }
        }

        @media (max-width: 768px) {
            .hero-content h1 {
                font-size: 2rem;
            }
            
            .hero-content p {
                font-size: 1rem;
            }
            
            .blog-intro h2 {
                font-size: 2rem;
            }
            
            .newsletter-form {
                flex-direction: column;
            }
            
            .newsletter-form input,
            .newsletter-form button {
                width: 100%;
                border-radius: 5px;
            }
            
            .newsletter-form button {
                margin-top: 10px;
                padding: 15px;
            }
        }

        @media (max-width: 576px) {
            .blog-hero {
                height: 350px;
            }
            
            .hero-content h1 {
                font-size: 1.8rem;
            }
            
            .blog-grid {
                grid-template-columns: 1fr;
            }
            
            .blog-content {
                padding: 20px;
            }
        }
    </style>
</head>
<body>

<!-- ========== HEADER ========== -->
<header class="header">
    <div class="container">
        <nav class="navbar">
            <a href="accueil.jsp" class="logo-tobi" aria-label="Retour à l'accueil">
                <img src="${pageContext.request.contextPath}/images/partners/Capture d’écran 2025-05-20 105210.jpg"
                     alt="GLOBAL VISA LTD" class="logo-img">
            </a>
            
            <ul class="nav-links">
                <li><a href="accueil.jsp"><i class="fas fa-home"></i> Accueil</a></li>
                <li><a href="propos.jsp"><i class="fas fa-info-circle"></i> À propos</a></li>

                <!-- Services Dropdown -->
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle">
                        <i class="fas fa-hand-holding-usd"></i> Services
                        <i class="fas fa-chevron-down dropdown-icon"></i>
                    </a>
                    <ul class="dropdown-content">
                        <li><a href="evaluation.jsp"><i class="fas fa-user-graduate"></i> Évaluation de profil</a></li>
                        <li><a href="visa.jsp"><i class="fas fa-passport"></i> Demandes de visa</a></li>
                        <li><a href="billetrie.jsp"><i class="fas fa-plane"></i> Billeterie Aérienne</a></li>
                        <li><a href="langue.jsp"><i class="fas fa-language"></i> Cours de langue</a></li>
                        <li><a href="integration.jsp"><i class="fas fa-hands-helping"></i> Aide à l'intégration</a></li>
                    </ul>
                </li>

                <li><a href="programme.jsp"><i class="fas fa-globe-americas"></i> Programmes</a></li>
                <li><a href="blog.jsp" class="active"><i class="fas fa-newspaper"></i> Blog</a></li>
            </ul>

            <div class="hamburger">
                <i class="fas fa-bars"></i>
            </div>
        </nav>
    </div>
</header>

<!-- ========== HERO SECTION ========== -->
<section class="blog-hero">
    <div class="hero-content">
        <h1>Blog Global Visa LTD</h1>
        <p>Découvrez nos articles informatifs et témoignages sur l'immigration, rédigés par nos experts</p>
    </div>
</section>

<!-- ========== BREADCRUMB ========== -->
<div class="breadcrumb">
    <div class="container">
        <ul class="breadcrumb-list">
            <li class="breadcrumb-item"><a href="accueil.jsp"><i class="fas fa-home"></i> Accueil</a></li>
            <li class="breadcrumb-item active">Blog</li>
        </ul>
    </div>
</div>

<!-- ========== BLOG INTRO ========== -->
<section class="blog-intro">
    <div class="container">
        <h2>Blog</h2>
        <p>Nous vous proposons des articles informatifs, rédigés par des experts du domaine. Vous y trouverez des informations utiles, des conseils pratiques et des témoignages de personnes qui ont vécu l'immigration de près.</p>
    </div>
</section>

<!-- ========== BLOG POSTS ========== -->
<section class="blog-posts">
    <div class="container">
        <div class="blog-grid">
            <!-- Article 1 -->
            <div class="blog-card">
                <div class="blog-badge">Nouveau</div>
                <div class="blog-image" style="background-image: url('immigrer.png');"></div>
                <div class="blog-content">
                    <div class="blog-meta">
                        <span class="blog-date">02/02/2025</span>
                        <span class="blog-category">Canada</span>
                    </div>
                    <h3 class="blog-title">Pourquoi immigrer au Canada quand on est Camerounais ?</h3>
                    <p class="blog-excerpt">Découvrez les motivations profondes qui poussent les Camerounais à immigrer au Canada et les avantages qu'offre ce pays.</p>
                    <a href="#" class="read-more">Lire l'article <i class="fas fa-arrow-right"></i></a>
                </div>
            </div>
            
            <!-- Article 2 -->
            <div class="blog-card">
                <div class="blog-image" style="background-image: url('dt158l.jpg');"></div>
                <div class="blog-content">
                    <div class="blog-meta">
                        <span class="blog-date">03/02/2025</span>
                        <span class="blog-category">Québec</span>
                    </div>
                    <h3 class="blog-title">Vivre au Québec : Un havre de paix aux multiples avantages</h3>
                    <p class="blog-excerpt">Niché au cœur de l'Amérique du Nord, le Québec offre une multitude d'avantages qui font de lui une destination de choix.</p>
                    <a href="#" class="read-more">Lire l'article <i class="fas fa-arrow-right"></i></a>
                </div>
            </div>
            
            <!-- Article 3 -->
            <div class="blog-card">
                <div class="blog-image" style="background-image: url('ENGLISH.jpg');"></div>
                <div class="blog-content">
                    <div class="blog-meta">
                        <span class="blog-date">04/02/2025</span>
                        <span class="blog-category">Langue</span>
                    </div>
                    <h3 class="blog-title">Quelle est la langue la plus parlée au Québec en 2025 ?</h3>
                    <p class="blog-excerpt">Découvrez dans ce nouvel article, la langue parlée au Québec, sa 2e langue, son histoire et son importance pour les immigrants.</p>
                    <a href="#" class="read-more">Lire l'article <i class="fas fa-arrow-right"></i></a>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- ========== VIDEO SECTION ========== -->
<section class="video-section">
    <div class="container">
        <h2>Témoignages en vidéo</h2>
        
        <div class="video-grid">
            <!-- Video 1 -->
            <div class="video-card">
                <div class="video-container" onclick="this.querySelector('iframe').src += '&autoplay=1'">
                    <iframe src="https://www.youtube.com/embed/2Wt1SKLD3Bg?rel=0&enablejsapi=1&modestbranding=1" 
                            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" 
                            allowfullscreen
                            title="Systèmes de billeterie aérienne"
                            aria-label="Vidéo démo systèmes GDS"
                            loading="lazy"></iframe>
                </div>
                <div class="video-info">
                    <h3 class="video-title">Témoignage de Marie</h3>
                    <p>Residence permanante  au Canada</p>
                </div>
            </div>
            
        </div>
    </div>
</section>

<!-- ========== AGENCIES SECTION ========== -->
<section class="agencies-section">
    <div class="container">
        <h2>Nos agences</h2>
        
        <div class="agencies-grid">
            <!-- Agence Douala -->
            <div class="agency-card">
                <div class="blog-image" style="background-image: url('dado1.jpg');"></div>
                <h3 class="agency-title">Agence Douala</h3>
                <p class="agency-description">Si vous résidez à Douala, n'hésitez pas à contacter nos agents via WhatsApp ou par appel.</p>
                <div class="agency-contact">
                    <a href="https://wa.me/+237687051214" class="contact-btn"><i class="fab fa-whatsapp"></i> WhatsApp</a>
                    
                </div>
            </div>
            
            <!-- Agence Yaoundé -->
            <div class="agency-card">
                <div class="blog-image" style="background-image: url('12.jpg');"></div>
                <h3 class="agency-title">Agence Yaoundé</h3>
                <p class="agency-description">Si vous résidez à Yaoundé, n'hésitez pas à contacter nos agents via WhatsApp ou par appel.</p>
                <div class="agency-contact">
                    <a href="https://wa.me/+237692586274"class="contact-btn"><i class="fab fa-whatsapp"></i> WhatsApp</a>
                   
                </div>
            </div>
        </div>
    </div>
</section>

<!-- ========== NEWSLETTER SECTION ========== -->
<section class="newsletter-section">
    <div class="container">
        <h2>Restez informé</h2>
        <p>Abonnez-vous à nos comptes pour recevoir les derniers articles et actualités sur l'immigration.</p>
        
     
    </div>
</section>

<!-- ========== FOOTER ========== -->
<footer class="footer">
    <div class="container">
        <div class="footer-grid">
            <div class="footer-col">
                <a href="accueil.jsp" class="footer-logo">
                    <i class="fas fa-globe"></i>
                    <span>Global Visa LTD</span>
                </a>
                <p>Votre partenaire de confiance pour tous vos projets d'immigration à l'étranger.</p>
                <div class="newsletter-form">
                    <input type="email" placeholder="Votre email">
                    <button type="submit"><i class="fas fa-paper-plane"></i></button>
                </div>
            </div>
            
            <div class="footer-col">
                <h4>Liens rapides</h4>
                <ul>
                    <li><a href="accueil.jsp">Accueil</a></li>
                    <li><a href="propos.jsp">À propos</a></li>
                    <li><a href="programme.jsp">Programmes</a></li>
                    <li><a href="blog.jsp">Blog</a></li>
                </ul>
            </div>
            
            <div class="footer-col">
                <h4>Nos services</h4>
                <ul>
                    <li><a href="evaluation.jsp">Évaluation de profil</a></li>
                    <li><a href="visa.jsp">Demandes de visa</a></li>
                    <li><a href="billetrie.jsp">Billeterie Aérienne</a></li>
                    <li><a href="langue.jsp">Cours de langue</a></li>
                    <li><a href="integration.jsp">Aide à l'intégration</a></li>
                </ul>
            </div>
            
            <div class="footer-col">
                <h4>Contact</h4>
                <ul>
                    <li><i class="fas fa-phone-alt"></i> (+237) 6 20 27 96 30</li>
                    <li><i class="fas fa-envelope"></i> globalvisaltd1@gmail.com</li>
                </ul>
            </div>
        </div>
        
        <div class="footer-bottom">
            <p>&copy; 2025 Global Visa LTD. Tous droits réservés.</p>
            
        </div>
    </div>
</footer>

<!-- ========== JAVASCRIPT ========== -->
<script>
    // Mobile Menu Toggle
    const hamburger = document.querySelector('.hamburger');
    const navLinks = document.querySelector('.nav-links');
    
    hamburger.addEventListener('click', () => {
        navLinks.classList.toggle('active');
        hamburger.innerHTML = navLinks.classList.contains('active') 
            ? '<i class="fas fa-times"></i>' 
            : '<i class="fas fa-bars"></i>';
    });
    
    // Mobile Dropdown Toggle
    const dropdowns = document.querySelectorAll('.dropdown');
    
    dropdowns.forEach(dropdown => {
        const toggle = dropdown.querySelector('.dropdown-toggle');
        
        toggle.addEventListener('click', (e) => {
            if (window.innerWidth <= 768) {
                e.preventDefault();
                dropdown.classList.toggle('active');
            }
        });
    });
    
    // Animation on scroll
    const animateOnScroll = () => {
        const elements = document.querySelectorAll('.blog-card, .testimonial-card, .video-card, .agency-card');
        
        elements.forEach(element => {
            const elementPosition = element.getBoundingClientRect().top;
            const screenPosition = window.innerHeight / 1.2;
            
            if (elementPosition < screenPosition) {
                element.style.opacity = '1';
                element.style.transform = 'translateY(0)';
            }
        });
    };
    
    // Set initial state for animation
    document.querySelectorAll('.blog-card, .testimonial-card, .video-card, .agency-card').forEach(element => {
        element.style.opacity = '0';
        element.style.transform = 'translateY(30px)';
        element.style.transition = 'opacity 0.5s ease, transform 0.5s ease';
    });
    
    // Run animation on load and scroll
    window.addEventListener('load', animateOnScroll);
    window.addEventListener('scroll', animateOnScroll);
    
    // Header Scroll Effect
    window.addEventListener('scroll', () => {
        const header = document.querySelector('.header');
        header.classList.toggle('scrolled', window.scrollY > 50);
    });
</script>

</body>
</html>