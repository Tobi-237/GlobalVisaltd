<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Global Visa LTD - Nos Programmes de Formation</title>
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600;700&family=Playfair+Display:wght@400;500;600;700&display=swap" rel="stylesheet">
    <style>
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

             /* Header Styles */
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
      

        /* Hero Banner */
        .program-hero {
            background: linear-gradient(rgba(139, 69, 19, 0.8), rgba(139, 69, 19, 0.8)), 
                        url('https://images.unsplash.com/photo-1522202176988-66273c2fd55f?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80');
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

        .program-hero::before {
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

        /* Breadcrumb */
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

        /* Section Styles */
        section {
            padding: 80px 0;
        }

        h2 {
            font-family: var(--font-heading);
            font-size: 2.5rem;
            color: var(--secondary-color);
            text-align: center;
            margin-bottom: 20px;
            position: relative;
        }

        h2::after {
            content: '';
            display: block;
            width: 80px;
            height: 3px;
            background-color: var(--primary-color);
            margin: 20px auto;
        }

        .subtitle {
            text-align: center;
            font-size: 1.1rem;
            color: var(--text-color);
            max-width: 700px;
            margin: 0 auto 50px;
        }

        /* Program Tabs */
        .program-tabs {
            display: flex;
            justify-content: center;
            margin-bottom: 40px;
            flex-wrap: wrap;
        }

        .tab-btn {
            padding: 12px 25px;
            background-color: var(--light-color);
            border: 1px solid #ddd;
            border-radius: 50px;
            margin: 0 10px 10px 0;
            cursor: pointer;
            transition: var(--transition);
            font-weight: 600;
            color: var(--dark-color);
            display: flex;
            align-items: center;
            gap: 8px;
        }

        .tab-btn i {
            font-size: 1.2rem;
        }

        .tab-btn:hover {
            color: var(--primary-color);
            border-color: var(--primary-color);
        }

        .tab-btn.active {
            background-color: var(--primary-color);
            color: var(--light-color);
            border-color: var(--primary-color);
        }

        /* Program Content */
        .tab-content {
            display: none;
            animation: fadeIn 0.5s ease;
        }

        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        }

        .tab-content.active {
            display: block;
        }

        /* Program Cards */
        .program-cards {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(350px, 1fr));
            gap: 30px;
        }

        .program-card {
            background-color: var(--light-color);
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.08);
            transition: var(--transition);
            position: relative;
        }

        .program-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 15px 40px rgba(0, 0, 0, 0.15);
        }

        .program-badge {
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

        .program-image {
            height: 200px;
            background-size: cover;
            background-position: center;
            position: relative;
        }

        .program-image::after {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: linear-gradient(to bottom, rgba(0,0,0,0.1) 0%, rgba(0,0,0,0.7) 100%);
        }

        .program-info {
            padding: 30px;
        }

        .program-title {
            font-family: var(--font-heading);
            font-size: 1.5rem;
            color: var(--secondary-color);
            margin-bottom: 15px;
            transition: var(--transition);
        }

        .program-card:hover .program-title {
            color: var(--primary-color);
        }

        .program-meta {
            display: flex;
            flex-wrap: wrap;
            gap: 15px;
            margin-bottom: 20px;
        }

        .meta-item {
            display: flex;
            align-items: center;
            gap: 8px;
            font-size: 0.9rem;
            color: var(--text-color);
        }

        .meta-item i {
            color: var(--primary-color);
        }

        .program-desc {
            margin-bottom: 25px;
        }

        .program-schedule {
            margin-bottom: 25px;
        }

        .schedule-title {
            font-weight: 600;
            margin-bottom: 10px;
            color: var(--secondary-color);
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .schedule-title i {
            color: var(--primary-color);
        }

        .schedule-list {
            list-style: none;
            padding-left: 30px;
        }

        .schedule-item {
            margin-bottom: 8px;
            position: relative;
        }

        .schedule-item::before {
            content: '\f017';
            font-family: 'Font Awesome 6 Free';
            font-weight: 900;
            position: absolute;
            left: -25px;
            color: var(--primary-color);
        }

        .btn {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            background-color: var(--primary-color);
            color: var(--light-color);
            padding: 12px 30px;
            border-radius: 50px;
            text-decoration: none;
            font-weight: 600;
            transition: var(--transition);
            border: 2px solid var(--primary-color);
            font-size: 1rem;
            cursor: pointer;
            gap: 8px;
        }

        .btn:hover {
            background-color: transparent;
            color: var(--primary-color);
            transform: translateY(-3px);
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
        }

        .btn-outline {
            background-color: transparent;
            color: var(--primary-color);
            border-color: var(--primary-color);
        }

        .btn-outline:hover {
            background-color: var(--primary-color);
            color: var(--light-color);
        }

        /* Features Section */
        .features-section {
            background-color: var(--gray-color);
        }

        .features-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 30px;
        }

        .feature-card {
            background-color: var(--light-color);
            padding: 40px 30px;
            border-radius: 10px;
            text-align: center;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.05);
            transition: var(--transition);
            position: relative;
            overflow: hidden;
            z-index: 1;
        }

        .feature-card::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: linear-gradient(135deg, var(--primary-color) 0%, var(--secondary-color) 100%);
            opacity: 0;
            transition: var(--transition);
            z-index: -1;
        }

        .feature-card:hover {
            color: var(--light-color);
            transform: translateY(-10px);
            box-shadow: 0 15px 30px rgba(0, 0, 0, 0.1);
        }

        .feature-card:hover::before {
            opacity: 1;
        }

        .feature-card:hover .feature-icon,
        .feature-card:hover h3 {
            color: var(--light-color);
        }

        .feature-icon {
            font-size: 3rem;
            color: var(--primary-color);
            margin-bottom: 20px;
            transition: var(--transition);
        }

        .feature-card h3 {
            font-size: 1.3rem;
            color: var(--secondary-color);
            margin-bottom: 15px;
            transition: var(--transition);
        }

        /* CTA Section */
        .cta-section {
            background: linear-gradient(rgba(139, 69, 19, 0.9), rgba(139, 69, 19, 0.9)), 
                        url('https://images.unsplash.com/photo-1523050854058-8df90110c9f1?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80');
            background-size: cover;
            background-position: center;
            color: var(--light-color);
            text-align: center;
            padding: 100px 0;
            position: relative;
        }

        .cta-content {
            position: relative;
            z-index: 2;
            max-width: 800px;
            margin: 0 auto;
        }

        .cta-content h2 {
            color: var(--light-color);
            margin-bottom: 30px;
        }

        .cta-content h2::after {
            background-color: var(--light-color);
        }

        .cta-content p {
            font-size: 1.2rem;
            margin-bottom: 40px;
        }

        .cta-buttons {
            display: flex;
            justify-content: center;
            gap: 20px;
            flex-wrap: wrap;
        }
         /* Footer */
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

        /* Responsive Styles */
        @media (max-width: 992px) {
            .hero-content h1 {
                font-size: 2.5rem;
            }
            
            section {
                padding: 60px 0;
            }
            
            .program-cards {
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
            
            h2 {
                font-size: 2rem;
            }
            
            .program-card {
                max-width: 500px;
                margin: 0 auto;
            }
            
            .cta-buttons {
                flex-direction: column;
                align-items: center;
            }
            
            .btn {
                width: 100%;
                max-width: 300px;
            }
        }

        @media (max-width: 576px) {
            .program-hero {
                height: 350px;
            }
            
            .hero-content h1 {
                font-size: 1.8rem;
            }
            
            .program-cards {
                grid-template-columns: 1fr;
            }
            
            .program-info {
                padding: 20px;
            }
            
            .feature-card {
                padding: 30px 20px;
            }
        }
            /* Mobile Dropdown */
            .dropdown-content {
                position: static;
                box-shadow: none;
                background: rgba(0, 0, 0, 0.03);
                max-height: 0;
                overflow: hidden;
                transition: max-height 0.3s ease;
                opacity: 1;
                visibility: visible;
                transform: none;
            }

            .dropdown.active .dropdown-content {
                max-height: 500px;
            }

            .dropdown-content a {
                padding-left: 40px;
            }
        }

        @media (max-width: 576px) {
            .slide-content {
                padding: 20px;
            }
            
            .slide-content h1 {
                font-size: 1.5rem;
            }
            
            .btn {
                padding: 10px 25px;
            }
            
            .slider-nav button {
                width: 40px;
                height: 40px;
            }
            
            .feature, .service, .news-card {
                padding: 20px;
            }
            
            .testimonial-content {
                padding: 30px 20px;
            }
            
            .partner {
                height: 60px;
            }
            
            .partner img {
                max-height: 40px;
            }
            
            .footer-grid {
                grid-template-columns: 1fr;
                gap: 30px;
            }
    </style>
</head>
<body>

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

                <li><a href="programme.jsp" class="active"><i class="fas fa-globe-americas"></i> Programmes</a></li>
                <li><a href="blog.jsp"><i class="fas fa-newspaper"></i> Blog</a></li>
               
            </ul>

            <div class="hamburger">
                <i class="fas fa-bars"></i>
            </div>
        </nav>
    </div>
</header>

<!-- Hero Banner -->
<section class="program-hero">
    <div class="hero-content">
        <h1>Nos Programmes de Formation</h1>
        <p>Découvrez nos formations professionnelles conçues pour booster votre carrière dans le domaine de la billeterie aérienne et maîtriser les tests linguistiques internationaux.</p>
        <a href="#programmes" class="btn"><i class="fas fa-arrow-down"></i> Explorer nos programmes</a>
    </div>
</section>

<!-- Breadcrumb -->
<div class="breadcrumb">
    <div class="container">
        <ul class="breadcrumb-list">
            <li class="breadcrumb-item"><a href="accueil.jsp"><i class="fas fa-home"></i> Accueil</a></li>
            <li class="breadcrumb-item active">Programmes de formation</li>
        </ul>
    </div>
</div>

<!-- Programs Section -->
<section id="programmes" class="programs-section">
    <div class="container">
        <h2>Nos Programmes</h2>
        <p class="subtitle">Choisissez la formation qui correspond à vos objectifs professionnels</p>
        
        <div class="program-tabs">
            <button class="tab-btn active" data-tab="billeterie">
                <i class="fas fa-plane"></i> Billeterie Aérienne
            </button>
            <button class="tab-btn" data-tab="langue">
                <i class="fas fa-language"></i> Tests de Langue
            </button>
            <button class="tab-btn" data-tab="intensifs">
                <i class="fas fa-fire"></i> Programmes Intensifs
            </button>
        </div>
        
        <div class="tab-content active" id="billeterie">
            <div class="program-cards">
                <!-- Programme 1 -->
                <div class="program-card">
                    <div class="program-badge">Nouveau</div>
                    <div class="program-image" style="background-image: url('https://images.unsplash.com/photo-1436491865332-7a61a109cc05?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80');"></div>
                    <div class="program-info">
                        <h3 class="program-title">Formation Complète en Billeterie Aérienne</h3>
                        <div class="program-meta">
                            <span class="meta-item"><i class="fas fa-clock"></i> 3 mois</span>
                            <span class="meta-item"><i class="fas fa-user-graduate"></i> Débutant</span>
                            <span class="meta-item"><i class="fas fa-certificate"></i> Certifiante</span>
                        </div>
                        <div class="program-desc">
                            <p>Maîtrisez tous les aspects de la billeterie aérienne, des réservations aux émissions de billets en passant par la gestion des tarifs et des disponibilités.</p>
                        </div>
                        <div class="program-schedule">
                            <h4 class="schedule-title"><i class="fas fa-calendar-alt"></i> Horaires</h4>
                            <ul class="schedule-list">
                                <li class="schedule-item">Lundi au Mercredi: 15h - 17h</li>
                                <li class="schedule-item">Samedi: 09h - 13h</li>
                            </ul>
                        </div>
                        <a href="https://wa.me/+237671339388" class="btn"><i class="fas fa-info-circle"></i> S'inscrire</a>
                    </div>
                </div>
                
                <!-- Programme 2 -->
                <div class="program-card">
                    <div class="program-image" style="background-image: url('https://images.unsplash.com/photo-1556388158-158ea5ccacbd?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80');"></div>
                    <div class="program-info">
                        <h3 class="program-title">Gestion Avancée des Systèmes de Réservation (GDS)</h3>
                        <div class="program-meta">
                            <span class="meta-item"><i class="fas fa-clock"></i> 2 mois</span>
                            <span class="meta-item"><i class="fas fa-user-graduate"></i> Intermédiaire</span>
                            <span class="meta-item"><i class="fas fa-certificate"></i> Certification</span>
                        </div>
                        <div class="program-desc">
                            <p>Apprenez à maîtriser les systèmes de réservation globaux (Amadeus, Sabre, Galileo) avec des techniques avancées pour les professionnels.</p>
                        </div>
                        <div class="program-schedule">
                            <h4 class="schedule-title"><i class="fas fa-calendar-alt"></i> Horaires</h4>
                            <ul class="schedule-list">
                                <li class="schedule-item">Lundi au Mercredi: 15h - 17h</li>
                                <li class="schedule-item">Vendredi: 20h - 23h</li>
                            </ul>
                        </div>
                        <a href="https://wa.me/+237671339388" class="btn"><i class="fas fa-info-circle"></i> S'inscrire</a>
                    </div>
                </div>
                
                <!-- Programme 3 -->
                <div class="program-card">
                    <div class="program-image" style="background-image: url('https://images.unsplash.com/photo-1436491865332-7a61a109cc05?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80');"></div>
                    <div class="program-info">
                        <h3 class="program-title">Spécialisation en Tarification Aérienne</h3>
                        <div class="program-meta">
                            <span class="meta-item"><i class="fas fa-clock"></i> 6 semaines</span>
                            <span class="meta-item"><i class="fas fa-user-graduate"></i> Avancé</span>
                            <span class="meta-item"><i class="fas fa-certificate"></i> Certifiante</span>
                        </div>
                        <div class="program-desc">
                            <p>Décryptez les stratégies de tarification des compagnies aériennes et apprenez à optimiser les coûts pour vos clients.</p>
                        </div>
                        <div class="program-schedule">
                            <h4 class="schedule-title"><i class="fas fa-calendar-alt"></i> Horaires</h4>
                            <ul class="schedule-list">
                                <li class="schedule-item">Lundi au Mercredi: 15h - 17h</li>
                                <li class="schedule-item">Jeudi: 20h - 23h</li>
                            </ul>
                        </div>
                        <a href="https://wa.me/+237692586274" class="btn"><i class="fas fa-info-circle"></i> S'inscrire</a>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="tab-content" id="langue">
            <div class="program-cards">
                <!-- Programme 4 -->
                <div class="program-card">
                    <div class="program-badge">Populaire</div>
                    <div class="program-image" style="background-image: url('https://images.unsplash.com/photo-1546410531-bb4caa6b424d?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80');"></div>
                    <div class="program-info">
                        <h3 class="program-title">Préparation Intensive au TCF</h3>
                        <div class="program-meta">
                            <span class="meta-item"><i class="fas fa-clock"></i> 8 semaines</span>
                            <span class="meta-item"><i class="fas fa-user-graduate"></i> Tous niveaux</span>
                            <span class="meta-item"><i class="fas fa-certificate"></i> Résultats garantis</span>
                        </div>
                        <div class="program-desc">
                            <p>Programme complet pour réussir le Test de Connaissance du Français avec des techniques éprouvées et des simulations d'examen.</p>
                        </div>
                        <div class="program-schedule">
                            <h4 class="schedule-title"><i class="fas fa-calendar-alt"></i> Horaires</h4>
                            <ul class="schedule-list">
                                <li class="schedule-item">Jeudi au Samedi: 09h - 13h</li>
                                <li class="schedule-item">Jeudi et Vendredi: 20h - 23h</li>
                            </ul>
                        </div>
                        <a href="https://wa.me/+237697177636 " class="btn"><i class="fas fa-info-circle"></i> S'inscrire</a>
                    </div>
                </div>
                
                <!-- Programme 5 -->
                <div class="program-card">
                    <div class="program-image" style="background-image: url('https://images.unsplash.com/photo-1546410531-bb4caa6b424d?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80');"></div>
                    <div class="program-info">
                        <h3 class="program-title">Formation Complète à l'IELTS</h3>
                        <div class="program-meta">
                            <span class="meta-item"><i class="fas fa-clock"></i> 10 semaines</span>
                            <span class="meta-item"><i class="fas fa-user-graduate"></i> Tous niveaux</span>
                            <span class="meta-item"><i class="fas fa-certificate"></i> Résultats garantis</span>
                        </div>
                        <div class="program-desc">
                            <p>Approche méthodique pour maximiser votre score à l'IELTS avec des enseignants expérimentés et du matériel actualisé.</p>
                        </div>
                        <div class="program-schedule">
                            <h4 class="schedule-title"><i class="fas fa-calendar-alt"></i> Horaires</h4>
                            <ul class="schedule-list">
                                <li class="schedule-item">Jeudi au Samedi: 09h - 13h</li>
                                <li class="schedule-item">Vendredi: 20h - 23h</li>
                            </ul>
                        </div>
                        <a href="https://wa.me/+237687051214" class="btn"><i class="fas fa-info-circle"></i> S'inscrire</a>
                    </div>
                </div>
                
                <!-- Programme 6 -->
                <div class="program-card">
                    <div class="program-image" style="background-image: url('https://images.unsplash.com/photo-1546410531-bb4caa6b424d?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80');"></div>
                    <div class="program-info">
                        <h3 class="program-title">Préparation au TOEFL et TEF</h3>
                        <div class="program-meta">
                            <span class="meta-item"><i class="fas fa-clock"></i> 12 semaines</span>
                            <span class="meta-item"><i class="fas fa-user-graduate"></i> Intermédiaire/Avancé</span>
                            <span class="meta-item"><i class="fas fa-certificate"></i> Résultats garantis</span>
                        </div>
                        <div class="program-desc">
                            <p>Double préparation pour ces tests essentiels à l'immigration avec des stratégies adaptées à chaque épreuve.</p>
                        </div>
                        <div class="program-schedule">
                            <h4 class="schedule-title"><i class="fas fa-calendar-alt"></i> Horaires</h4>
                            <ul class="schedule-list">
                                <li class="schedule-item">Jeudi au Samedi: 09h - 13h</li>
                                <li class="schedule-item">Jeudi et Vendredi: 20h - 23h</li>
                            </ul>
                        </div>
                        <a href="https://wa.me/+237687051214" class="btn"><i class="fas fa-info-circle"></i> S'inscrire</a>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="tab-content" id="intensifs">
            <div class="program-cards">
                <!-- Programme 7 -->
                <div class="program-card">
                    <div class="program-badge">Intensif</div>
                    <div class="program-image" style="background-image: url('https://images.unsplash.com/photo-1522202176988-66273c2fd55f?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80');"></div>
                    <div class="program-info">
                        <h3 class="program-title">Bootcamp Billeterie Aérienne</h3>
                        <div class="program-meta">
                            <span class="meta-item"><i class="fas fa-clock"></i> 4 semaines</span>
                            <span class="meta-item"><i class="fas fa-user-graduate"></i> Accéléré</span>
                            <span class="meta-item"><i class="fas fa-certificate"></i> Certification</span>
                        </div>
                        <div class="program-desc">
                            <p>Formation intensive pour maîtriser les fondamentaux de la billeterie aérienne en un temps record. Parfait pour une reconversion professionnelle.</p>
                        </div>
                        <div class="program-schedule">
                            <h4 class="schedule-title"><i class="fas fa-calendar-alt"></i> Horaires</h4>
                            <ul class="schedule-list">
                                <li class="schedule-item">Lundi au Samedi: 08h - 16h</li>
                                <li class="schedule-item">Soirées pratiques: 18h - 21h</li>
                            </ul>
                        </div>
                        <a href="https://wa.me/+237697177636 " class="btn"><i class="fas fa-info-circle"></i> S'inscrire</a>
                    </div>
                </div>
                
                <!-- Programme 8 -->
                <div class="program-card">
                    <div class="program-image" style="background-image: url('https://images.unsplash.com/photo-1522202176988-66273c2fd55f?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80');"></div>
                    <div class="program-info">
                        <h3 class="program-title">Immersion Linguistique Intensive</h3>
                        <div class="program-meta">
                            <span class="meta-item"><i class="fas fa-clock"></i> 3 semaines</span>
                            <span class="meta-item"><i class="fas fa-user-graduate"></i> Immersion totale</span>
                            <span class="meta-item"><i class="fas fa-certificate"></i> Résultats rapides</span>
                        </div>
                        <div class="program-desc">
                            <p>Programme d'immersion totale en français ou anglais pour progresser rapidement avant un test ou une immigration.</p>
                        </div>
                        <div class="program-schedule">
                            <h4 class="schedule-title"><i class="fas fa-calendar-alt"></i> Horaires</h4>
                            <ul class="schedule-list">
                                <li class="schedule-item">Lundi au Vendredi: 08h - 17h</li>
                                <li class="schedule-item">Activités pratiques le weekend</li>
                            </ul>
                        </div>
                        <a href="https://wa.me/+237687051214" class="btn"><i class="fas fa-info-circle"></i> S'inscrire</a>
                    </div>
                </div>
                
                <!-- Programme 9 -->
                <div class="program-card">
                    <div class="program-image" style="background-image: url('https://images.unsplash.com/photo-1522202176988-66273c2fd55f?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80');"></div>
                    <div class="program-info">
                        <h3 class="program-title">Combo Billeterie + Langue</h3>
                        <div class="program-meta">
                            <span class="meta-item"><i class="fas fa-clock"></i> 8 semaines</span>
                            <span class="meta-item"><i class="fas fa-user-graduate"></i> Double compétence</span>
                            <span class="meta-item"><i class="fas fa-certificate"></i> 2 certifications</span>
                        </div>
                        <div class="program-desc">
                            <p>Formation combinée en billeterie aérienne et préparation linguistique pour maximiser vos chances sur le marché international.</p>
                        </div>
                        <div class="program-schedule">
                            <h4 class="schedule-title"><i class="fas fa-calendar-alt"></i> Horaires</h4>
                            <ul class="schedule-list">
                                <li class="schedule-item">Matin: Langue (09h - 12h)</li>
                                <li class="schedule-item">Après-midi: Billeterie (14h - 17h)</li>
                                <li class="schedule-item">Soirées pratiques optionnelles</li>
                            </ul>
                        </div>
                        <a href="https://wa.me/+237692586274" class="btn"><i class="fas fa-info-circle"></i> S'inscrire</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Features Section -->
<section class="features-section">
    <div class="container">
        <h2>Pourquoi nos formations?</h2>
        <p class="subtitle">Découvrez ce qui rend nos programmes uniques et efficaces</p>
        
        <div class="features-grid">
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-chalkboard-teacher"></i></div>
                <h3>Formateurs Experts</h3>
                <p>Nos instructeurs sont des professionnels en activité avec une expérience internationale.</p>
            </div>
            
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-laptop-code"></i></div>
                <h3>Matériel Pédagogique</h3>
                <p>Accès à des plateformes en ligne, simulateurs GDS et outils professionnels.</p>
            </div>
            
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-briefcase"></i></div>
                <h3>Orientation Professionnelle</h3>
                <p>Conseils pour votre CV, entretiens et recherche d'emploi dans le secteur.</p>
            </div>
            
            <div class="feature-card">
                <div class="feature-icon"><i class="fas fa-certificate"></i></div>
                <h3>Certifications Reconnues</h3>
                <p>Diplômes valorisés par les employeurs du secteur aérien et des institutions.</p>
            </div>
        </div>
    </div>
</section>

<!-- CTA Section -->
<section class="cta-section">
    <div class="cta-content">
        <h2>Prêt à transformer votre carrière?</h2>
        <p>Nos conseillers pédagogiques sont à votre disposition pour vous aider à choisir la formation la plus adaptée à vos objectifs professionnels.</p>
        <div class="cta-buttons">
            
            <a href="https://wa.me/+237692586274" class="btn btn-outline"><i class="fas fa-info-circle"></i> Plus d'informations</a>
        </div>
    </div>
</section>

<!-- Footer (identique à l'accueil) -->
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
    
    // Program Tabs
    const tabBtns = document.querySelectorAll('.tab-btn');
    const tabContents = document.querySelectorAll('.tab-content');
    
    tabBtns.forEach(btn => {
        btn.addEventListener('click', () => {
            // Remove active class from all buttons and contents
            tabBtns.forEach(btn => btn.classList.remove('active'));
            tabContents.forEach(content => content.classList.remove('active'));
            
            // Add active class to clicked button and corresponding content
            btn.classList.add('active');
            const tabId = btn.getAttribute('data-tab');
            document.getElementById(tabId).classList.add('active');
        });
    });
    
    // Smooth scrolling for anchor links
    document.querySelectorAll('a[href^="#"]').forEach(anchor => {
        anchor.addEventListener('click', function(e) {
            e.preventDefault();
            
            const targetId = this.getAttribute('href');
            if (targetId === '#') return;
            
            const targetElement = document.querySelector(targetId);
            if (targetElement) {
                window.scrollTo({
                    top: targetElement.offsetTop - 100,
                    behavior: 'smooth'
                });
            }
        });
    });
    
    // Header Scroll Effect
    window.addEventListener('scroll', () => {
        const header = document.querySelector('.header');
        header.classList.toggle('scrolled', window.scrollY > 50);
    });
    
    // Animation on scroll
    const animateOnScroll = () => {
        const elements = document.querySelectorAll('.program-card, .feature-card');
        
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
    document.querySelectorAll('.program-card, .feature-card').forEach(element => {
        element.style.opacity = '0';
        element.style.transform = 'translateY(30px)';
        element.style.transition = 'opacity 0.5s ease, transform 0.5s ease';
    });
    
    // Run animation on load and scroll
    window.addEventListener('load', animateOnScroll);
    window.addEventListener('scroll', animateOnScroll);
</script>

</body>
</html>