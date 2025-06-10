<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Global Visa LTD - Préparation aux examens de langue</title>
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600;700&family=Playfair+Display:wght@400;500;600;700&display=swap" rel="stylesheet">
    <style>
        /* Variables CSS pour une gestion centralisée des styles */
        :root {
            --primary-color: #E67E22;    /* Couleur principale orange */
            --secondary-color: #8B4513;  /* Couleur secondaire marron */
            --light-color: #FFFFFF;      /* Blanc */
            --dark-color: #333333;       /* Noir foncé */
            --gray-color: #F5F5F5;       /* Gris clair */
            --text-color: #555555;       /* Texte gris foncé */
            --font-main: 'Montserrat', sans-serif;         /* Police principale */
            --font-heading: 'Playfair Display', serif;     /* Police pour les titres */
        }

        /* Réinitialisation des styles par défaut */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        /* Styles de base pour le corps de la page */
        body {
            font-family: var(--font-main);
            padding-top: 80px; /* Compensation pour le header fixe */
            color: var(--text-color);
            line-height: 1.6;
            background-color: #f9f9f9;
        }

        /* Conteneur principal */
        .container {
            width: 100%;
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 20px;
        }

        /* Styles pour l'en-tête */
        .header {
            background: linear-gradient(135deg, rgba(255,255,255,0.98) 0%, rgba(250,250,250,0.97) 100%);
            box-shadow: 0 4px 30px rgba(0, 0, 0, 0.08);
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            z-index: 1000;
            padding: 12px 0;
            backdrop-filter: blur(8px);
            -webkit-backdrop-filter: blur(8px);
            border-bottom: 1px solid rgba(255, 255, 255, 0.3);
            transition: all 0.4s cubic-bezier(0.16, 1, 0.3, 1);
        }

        .header.scrolled {
            padding: 8px 0;
            box-shadow: 0 2px 20px rgba(0, 0, 0, 0.06);
            background: rgba(255, 255, 255, 0.96);
        }

        /* Barre de navigation */
        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        /* Logo */
        .logo-img {
            height: 50px;
            transition: transform 0.3s;
        }

        .logo-tobi:hover .logo-img {
            transform: scale(1.05);
        }

        /* Liens de navigation */
        .nav-links {
            display: flex;
            list-style: none;
        }

        .nav-links li {
            margin-left: 30px;
            position: relative;
        }

        .nav-links a {
            text-decoration: none;
            color: var(--dark-color);
            font-weight: 500;
            transition: color 0.3s;
            display: flex;
            align-items: center;
            gap: 8px;
        }

        .nav-links a:hover {
            color: var(--primary-color);
        }

        /* Menu hamburger (mobile) */
        .hamburger {
            display: none;
            cursor: pointer;
            font-size: 24px;
            color: var(--dark-color);
        }

        /* Menu déroulant */
        .dropdown {
            position: relative;
        }

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
            transition: all 0.3s ease;
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
            transition: all 0.3s;
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

        /* Styles communs pour les sections */
        section {
            padding: 80px 0;
        }

        /* Styles pour les titres */
        h2 {
            font-family: var(--font-heading);
            font-size: 2.5rem;
            color: var(--secondary-color);
            text-align: center;
            margin-bottom: 20px;
            position: relative;
        }

        /* Ligne décorative sous les titres */
        h2::after {
            content: '';
            display: block;
            width: 80px;
            height: 3px;
            background-color: var(--primary-color);
            margin: 20px auto;
        }

        /* Sous-titres */
        .subtitle {
            text-align: center;
            font-size: 1.1rem;
            color: var(--text-color);
            max-width: 700px;
            margin: 0 auto 50px;
        }

        /* Section Hero */
        .language-hero {
            background: linear-gradient(rgba(0, 0, 0, 0.7), rgba(0, 0, 0, 0.7)), url('images/language-hero.jpg');
            background-size: cover;
            background-position: center;
            height: 60vh;
            display: flex;
            align-items: center;
            text-align: center;
            color: var(--light-color);
        }

        .hero-content {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
        }

        .hero-content h1 {
            font-family: var(--font-heading);
            font-size: 2.8rem;
            margin-bottom: 20px;
        }

        .hero-content p {
            font-size: 1.2rem;
            margin-bottom: 30px;
        }

        /* Boutons */
        .btn {
            display: inline-block;
            background-color: var(--primary-color);
            color: var(--light-color);
            padding: 12px 30px;
            border-radius: 50px;
            text-decoration: none;
            font-weight: 600;
            transition: all 0.3s;
            border: 2px solid var(--primary-color);
        }

        .btn:hover {
            background-color: transparent;
            color: var(--light-color);
        }

        /* Section Introduction */
        .intro-section {
            background-color: var(--light-color);
            padding: 80px 0;
        }

        .intro-content {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 50px;
            align-items: center;
        }

        .intro-text h2 {
            text-align: left;
            margin-bottom: 30px;
        }

        .intro-text h2::after {
            margin: 20px 0;
        }

        .intro-image {
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 20px 40px rgba(0, 0, 0, 0.1);
        }

        .intro-image img {
            width: 100%;
            height: auto;
            display: block;
            transition: transform 0.5s;
        }

        .intro-image:hover img {
            transform: scale(1.05);
        }

        /* Section Examens */
        .exams-section {
            background-color: var(--gray-color);
            padding: 80px 0;
        }

        .exam-tabs {
            display: flex;
            justify-content: center;
            margin-bottom: 40px;
            flex-wrap: wrap;
        }

        .tab-btn {
            padding: 12px 25px;
            background-color: transparent;
            border: none;
            border-bottom: 3px solid transparent;
            font-family: var(--font-main);
            font-weight: 600;
            color: var(--text-color);
            cursor: pointer;
            transition: all 0.3s;
            margin: 0 5px;
        }

        .tab-btn.active {
            color: var(--primary-color);
            border-bottom-color: var(--primary-color);
        }

        .tab-btn:hover:not(.active) {
            color: var(--secondary-color);
        }

        .exam-content {
            display: none;
            animation: fadeIn 0.5s ease;
        }

        .exam-content.active {
            display: block;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        .exam-card {
            background-color: var(--light-color);
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.05);
            margin-bottom: 30px;
            transition: transform 0.3s, box-shadow 0.3s;
        }

        .exam-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 15px 40px rgba(0, 0, 0, 0.1);
        }

        .exam-image {
            height: 250px;
            overflow: hidden;
        }

        .exam-image img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform 0.5s;
        }

        .exam-card:hover .exam-image img {
            transform: scale(1.1);
        }

        .exam-details {
            padding: 30px;
        }

        .exam-details h3 {
            font-family: var(--font-heading);
            color: var(--secondary-color);
            margin-bottom: 15px;
            font-size: 1.5rem;
        }

        .exam-meta {
            display: flex;
            margin-bottom: 20px;
            color: var(--primary-color);
            font-weight: 500;
        }

        .exam-meta span {
            margin-right: 20px;
            display: flex;
            align-items: center;
        }

        .exam-meta i {
            margin-right: 5px;
        }

        /* Section Méthodologie */
        .method-section {
            background-color: var(--light-color);
            padding: 80px 0;
        }

        .method-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 30px;
        }

        .method-card {
            background-color: var(--gray-color);
            padding: 40px 30px;
            border-radius: 10px;
            text-align: center;
            transition: all 0.3s;
            position: relative;
            overflow: hidden;
            z-index: 1;
        }

        .method-card::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: linear-gradient(135deg, var(--primary-color), var(--secondary-color));
            opacity: 0;
            transition: opacity 0.3s;
            z-index: -1;
        }

        .method-card:hover::before {
            opacity: 1;
        }

        .method-card:hover {
            color: var(--light-color);
            transform: translateY(-10px);
        }

        .method-card:hover h3,
        .method-card:hover i {
            color: var(--light-color);
        }

        .method-card i {
            font-size: 3rem;
            color: var(--primary-color);
            margin-bottom: 20px;
            transition: color 0.3s;
        }

        .method-card h3 {
            font-size: 1.5rem;
            color: var(--secondary-color);
            margin-bottom: 15px;
            transition: color 0.3s;
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

        /* Section Témoignages */
        .testimonials-section {
            background-color: var(--secondary-color);
            color: var(--light-color);
            padding: 80px 0;
        }

        .testimonials-section h2 {
            color: var(--light-color);
        }

        .testimonials-section h2::after {
            background-color: var(--primary-color);
        }

        .testimonial-slider {
            max-width: 800px;
            margin: 0 auto;
            position: relative;
        }

        .testimonial {
            display: none;
            text-align: center;
            padding: 0 20px;
        }

        .testimonial.active {
            display: block;
        }

        .testimonial-content {
            background-color: rgba(255, 255, 255, 0.1);
            padding: 40px;
            border-radius: 10px;
            margin-bottom: 30px;
        }

        .testimonial-content p {
            font-size: 1.1rem;
            font-style: italic;
            margin-bottom: 30px;
        }

        .author {
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .author img {
            width: 60px;
            height: 60px;
            border-radius: 50%;
            object-fit: cover;
            margin-right: 15px;
        }

        .author h4 {
            font-size: 1.2rem;
            margin-bottom: 5px;
        }

        .author span {
            font-size: 0.9rem;
            opacity: 0.8;
        }

        /* Points de navigation du slider */
        .slider-dots {
            display: flex;
            justify-content: center;
            margin-top: 20px;
        }

        .dot {
            width: 12px;
            height: 12px;
            border-radius: 50%;
            background-color: rgba(255, 255, 255, 0.5);
            margin: 0 5px;
            cursor: pointer;
        }

        .dot.active {
            background-color: var(--primary-color);
        }

        /* Section CTA */
        .cta-section {
            background: linear-gradient(rgba(139, 69, 19, 0.9), rgba(139, 69, 19, 0.9)), url('images/language-pattern.jpg');
            background-size: cover;
            background-position: center;
            padding: 100px 0;
            text-align: center;
            color: var(--light-color);
        }

        .cta-content {
            max-width: 800px;
            margin: 0 auto;
        }

        .cta-content h2 {
            color: var(--light-color);
            margin-bottom: 30px;
        }

        .cta-content p {
            font-size: 1.2rem;
            margin-bottom: 40px;
        }

        /* Pied de page */
        .footer {
            background-color: var(--dark-color);
            color: var(--light-color);
            padding: 60px 0 0;
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

        .footer-col ul {
            list-style: none;
        }

        .footer-col li {
            margin-bottom: 15px;
        }

        .footer-col a {
            color: #bbb;
            text-decoration: none;
            transition: color 0.3s;
        }

        .footer-col a:hover {
            color: var(--primary-color);
        }

        /* Styles responsives */
        @media (max-width: 992px) {
            .hero-content h1 {
                font-size: 2.4rem;
            }
            
            .intro-content {
                grid-template-columns: 1fr;
            }
            
            .intro-text h2 {
                text-align: center;
            }
            
            .intro-text h2::after {
                margin: 20px auto;
            }
        }

        @media (max-width: 768px) {
            .nav-links {
                position: fixed;
                top: 70px;
                left: -100%;
                width: 100%;
                height: calc(100vh - 70px);
                background-color: var(--light-color);
                flex-direction: column;
                align-items: center;
                padding: 40px 0;
                transition: left 0.3s;
            }
            
            .nav-links.active {
                left: 0;
            }
            
            .nav-links li {
                margin: 15px 0;
            }
            
            .hamburger {
                display: block;
            }
            
            .hero-content h1 {
                font-size: 2rem;
            }
            
            section {
                padding: 60px 0;
            }
            
            h2 {
                font-size: 2rem;
            }

            /* Styles pour les menus déroulants en mobile */
            .dropdown-content {
                position: static;
                box-shadow: none;
                background: rgba(0, 0, 0, 0.03);
                max-height: 0;
                overflow: hidden;
                transition: max-height 0.3s ease;
            }

            .dropdown.active .dropdown-content {
                max-height: 500px;
            }

            .dropdown-content a {
                padding-left: 40px;
            }
        }

        @media (max-width: 576px) {
            .hero-content h1 {
                font-size: 1.8rem;
            }
            
            .hero-content p {
                font-size: 1rem;
            }
            
            .btn {
                padding: 10px 25px;
            }
            
            .exam-tabs {
                flex-direction: column;
                align-items: center;
            }
            
            .tab-btn {
                margin: 5px 0;
                width: 100%;
                text-align: center;
            }
            
            .exam-image {
                height: 200px;
            }
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

                <!-- Menu déroulant Services -->
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle">
                        <i class="fas fa-hand-holding-usd"></i> Services
                        <i class="fas fa-chevron-down dropdown-icon"></i>
                    </a>
                    <ul class="dropdown-content">
                        <li><a href="evaluation.jsp"><i class="fas fa-user-graduate"></i> Évaluation de profil</a></li>
                        <li><a href="visa.jsp"><i class="fas fa-passport"></i> Demandes de visa</a></li>
                        <li><a href="billetrie.jsp"><i class="fas fa-passport"></i>Billeterie Aerienne</a></li>
                        <li><a href="langue.jsp"><i class="fas fa-language"></i> Cours de langue</a></li>
                        <li><a href="integration.jsp"><i class="fas fa-hands-helping"></i> Aide à l'intégration</a></li>
                       
                    </ul>
                </li>

                <li><a href="programme.jsp"><i class="fas fa-globe-americas"></i> Programmes</a></li>
                <li><a href="blog.jsp"><i class="fas fa-newspaper"></i> Blog</a></li>
               
            </ul>

            <div class="hamburger">
                <i class="fas fa-bars"></i>
            </div>
        </nav>
    </div>
</header>

<!-- Hero Section -->
<section class="language-hero">
    <div class="container">
        <div class="hero-content">
            <h1>Préparation aux examens de langue</h1>
            <p>Maîtrisez les tests linguistiques requis pour votre immigration avec nos programmes intensifs sur mesure</p>
            <a href="https://wa.me/+237687051214" class="btn">Inscrivez-vous maintenant</a>
        </div>
    </div>
</section>

<!-- Introduction Section -->
<section class="intro-section">
    <div class="container">
        <div class="intro-content">
            <div class="intro-text">
                <h2>Votre succès commence avec la maîtrise de la langue</h2>
                <p>Chez Global Visa LTD, nous comprenons que les tests de langue comme l'IELTS, le TCF, le TEF et le TOEFL peuvent représenter un véritable défi. Mais voici la bonne nouvelle : avec la bonne préparation, vous pouvez exceller !</p>
                <p>Nos programmes de formation intensive sont conçus pour vous aider à :</p>
                <ul style="list-style-type: none; margin: 20px 0;">
                    <li><i class="fas fa-check-circle" style="color: var(--primary-color); margin-right: 10px;"></i> Maîtriser les techniques d'écoute, d'écriture et d'expression orale</li>
                    <li><i class="fas fa-check-circle" style="color: var(--primary-color); margin-right: 10px;"></i> Gérer efficacement votre temps et votre stress</li>
                    <li><i class="fas fa-check-circle" style="color: var(--primary-color); margin-right: 10px;"></i> Structurer vos réponses avec professionnalisme</li>
                    <li><i class="fas fa-check-circle" style="color: var(--primary-color); margin-right: 10px;"></i> Parler couramment et avec confiance lors de l'évaluation orale</li>
                </ul>
                <p>Distinguez-vous de la masse ! Avec la bonne préparation, vous pouvez obtenir des résultats au-delà de vos attentes.</p>
            </div>
            <div class="intro-image">
                <img src="images/partners/cour.jpg" alt="Cours de langue intensifs">
            </div>
        </div>
    </div>
</section>

<!-- Exams Section -->
<section class="exams-section">
    <div class="container">
        <h2>Nos programmes de préparation</h2>
        <p class="subtitle">Choisissez l'examen que vous devez préparer et découvrez notre approche sur mesure</p>
        
        <div class="exam-tabs">
            <button class="tab-btn active" data-tab="ielts">IELTS</button>
            <button class="tab-btn" data-tab="toefl">TOEFL</button>
            <button class="tab-btn" data-tab="tcf">TCF</button>
            <button class="tab-btn" data-tab="tef">TEF</button>
        </div>
        
        <!-- IELTS Tab Content -->
        <div class="exam-content active" id="ielts">
            <div class="exam-card">
                <div class="exam-image">
                    <img src="images/partners/iets.jpg" alt="Préparation IELTS">
                </div>
                <div class="exam-details">
                    <h3>International English Language Testing System</h3>
                    <div class="exam-meta">
                        <span><i class="fas fa-clock"></i> 4-12 semaines</span>
                        <span><i class="fas fa-users"></i> Groupes de 5-8 personnes</span>
                        <span><i class="fas fa-star"></i> Taux de réussite: 98%</span>
                    </div>
                    <p>L'IELTS est le test d'anglais le plus populaire au monde pour l'immigration et les études supérieures. Notre programme couvre les quatre compétences évaluées : écoute, lecture, écriture et expression orale.</p>
                    <p><strong>Nos spécificités :</strong></p>
                    <ul style="list-style-type: none; margin: 15px 0;">
                        <li><i class="fas fa-check" style="color: var(--primary-color); margin-right: 10px;"></i> Simulations d'examen hebdomadaires</li>
                        <li><i class="fas fa-check" style="color: var(--primary-color); margin-right: 10px;"></i> Correction détaillée des écrits par des examinateurs certifiés</li>
                        <li><i class="fas fa-check" style="color: var(--primary-color); margin-right: 10px;"></i> Techniques pour maximiser votre score dans chaque section</li>
                        
                    </ul>
                    <a href="https://wa.me/+237687051214" class="btn">Demander plus d'infos</a>
                </div>
            </div>
        </div>
        
        <!-- TOEFL Tab Content -->
        <div class="exam-content" id="toefl">
            <div class="exam-card">
                <div class="exam-image">
                    <img src="images/partners/TCF.jpg" alt="Préparation TOEFL">
                </div>
                <div class="exam-details">
                    <h3>Test of English as a Foreign Language</h3>
                    <div class="exam-meta">
                        <span><i class="fas fa-clock"></i> 6-10 semaines</span>
                        <span><i class="fas fa-users"></i> Groupes de 5-8 personnes</span>
                        <span><i class="fas fa-star"></i> Taux de réussite: 95%</span>
                    </div>
                    <p>Le TOEFL est largement reconnu par les universités américaines et les institutions académiques du monde entier. Notre formation intensive vous prépare spécifiquement au format informatique du test.</p>
                    <p><strong>Nos atouts :</strong></p>
                    <ul style="list-style-type: none; margin: 15px 0;">
                        <li><i class="fas fa-check" style="color: var(--primary-color); margin-right: 10px;"></i> Maîtrise des questions types et des pièges courants</li>
                        <li><i class="fas fa-check" style="color: var(--primary-color); margin-right: 10px;"></i> Stratégies pour le speaking et l'écriture académique</li>
                        <li><i class="fas fa-check" style="color: var(--primary-color); margin-right: 10px;"></i> Vocabulaire académique et expressions clés</li>
                        <li><i class="fas fa-check" style="color: var(--primary-color); margin-right: 10px;"></i> Tests pratiques avec feedback personnalisé</li>
                    </ul>
                    <a href="https://wa.me/+237687051214" class="btn">Demander plus d'infos</a>
                </div>
            </div>
        </div>
        
        <!-- TCF Tab Content -->
        <div class="exam-content" id="tcf">
            <div class="exam-card">
                <div class="exam-image">
                    <img src="images/partners/toeft.jpg" alt="Préparation TCF">
                </div>
                <div class="exam-details">
                    <h3>Test de Connaissance du Français</h3>
                    <div class="exam-meta">
                        <span><i class="fas fa-clock"></i> 4-8 semaines</span>
                        <span><i class="fas fa-users"></i> Groupes de 5-8 personnes</span>
                        <span><i class="fas fa-star"></i> Taux de réussite: 97%</span>
                    </div>
                    <p>Le TCF est le test officiel du ministère français de l'Éducation nationale pour évaluer le niveau de français des non-francophones. Il est souvent requis pour les démarches d'immigration au Canada et en France.</p>
                    <p><strong>Notre approche :</strong></p>
                    <ul style="list-style-type: none; margin: 15px 0;">
                        <li><i class="fas fa-check" style="color: var(--primary-color); margin-right: 10px;"></i> Préparation ciblée sur les 4 compétences (compréhension orale/écrite, expression orale/écrite)</li>
                        <li><i class="fas fa-check" style="color: var(--primary-color); margin-right: 10px;"></i> Techniques pour gérer le temps limité de l'examen</li>
                        <li><i class="fas fa-check" style="color: var(--primary-color); margin-right: 10px;"></i> Simulations d'entretien oral avec enregistrement et analyse</li>
                        <li><i class="fas fa-check" style="color: var(--primary-color); margin-right: 10px;"></i> Booster grammatical et lexical adapté au TCF</li>
                    </ul>
                    <a href="https://wa.me/+237673730686" class="btn">Demander plus d'infos</a>
                </div>
            </div>
        </div>
        
        <!-- TEF Tab Content -->
        <div class="exam-content" id="tef">
            <div class="exam-card">
                <div class="exam-image">
                    <img src="images/partners/TEF.jpg" alt="Préparation TEF">
                </div>
                <div class="exam-details">
                    <h3>Test d'Évaluation de Français</h3>
                    <div class="exam-meta">
                        <span><i class="fas fa-clock"></i> 4-8 semaines</span>
                        <span><i class="fas fa-users"></i> Groupes de 5-8 personnes</span>
                        <span><i class="fas fa-star"></i> Taux de réussite: 96%</span>
                    </div>
                    <p>Le TEF est reconnu par Immigration, Réfugiés et Citoyenneté Canada (IRCC) pour les demandes de résidence permanente et par le ministère de l'Intérieur français pour les demandes de nationalité.</p>
                    <p><strong>Nos points forts :</strong></p>
                    <ul style="list-style-type: none; margin: 15px 0;">
                        <li><i class="fas fa-check" style="color: var(--primary-color); margin-right: 10px;"></i> Méthodologie spécifique pour chaque épreuve du TEF</li>
                        <li><i class="fas fa-check" style="color: var(--primary-color); margin-right: 10px;"></i> Entraînement intensif à la compréhension orale rapide</li>
                        <li><i class="fas fa-check" style="color: var(--primary-color); margin-right: 10px;"></i> Ateliers d'expression écrite avec correction détaillée</li>
                        <li><i class="fas fa-check" style="color: var(--primary-color); margin-right: 10px;"></i> Préparation à l'entretien oral avec examinateurs expérimentés</li>
                    </ul>
                    <a href="https://wa.me/+237687051214" class="btn">Demander plus d'infos</a>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Methodology Section -->
<section class="method-section">
    <div class="container">
        <h2>Notre méthodologie unique</h2>
        <p class="subtitle">Découvrez ce qui fait la différence dans nos programmes de préparation</p>
        
        <div class="method-grid">
            <div class="method-card">
                <i class="fas fa-chalkboard-teacher"></i>
                <h3>Enseignants experts</h3>
                <p>Nos formateurs sont des spécialistes des tests linguistiques, certifiés et expérimentés dans la préparation à ces examens spécifiques.</p>
            </div>
            
            <div class="method-card">
                <i class="fas fa-book-open"></i>
                <h3>Matériel pédagogique</h3>
                <p>Nous fournissons des manuels complets, des annales corrigées et des ressources en ligne exclusives pour un entraînement optimal.</p>
            </div>
            
            <div class="method-card">
                <i class="fas fa-laptop"></i>
                <h3>Plateforme en ligne</h3>
                <p>Accès 24/7 à notre plateforme d'e-learning avec des centaines d'exercices interactifs, des tests blancs et des corrections automatiques.</p>
            </div>
            
            <div class="method-card">
                <i class="fas fa-user-friends"></i>
                <h3>Groupes réduits</h3>
                <p>Des effectifs limités à 8 participants maximum pour un suivi personnalisé et des interactions de qualité avec le formateur.</p>
            </div>
            
            <div class="method-card">
                <i class="fas fa-microphone-alt"></i>
                <h3>Simulations réelles</h3>
                <p>Des examens blancs dans les conditions réelles du test, avec correction détaillée et plan d'amélioration
                personnalisé.</p>
            </div>
            
            <div class="method-card">
                <i class="fas fa-chart-line"></i>
                <h3>Suivi personnalisé</h3>
                <p>Bilan régulier de votre progression avec des conseils ciblés pour améliorer vos points faibles et renforcer vos atouts.</p>
            </div>
        </div>
    </div>
</section>

<!-- Testimonials Section -->
<section class="testimonials-section">
    <div class="container">
        <div class="container">
        <h2>Témoignages en vidéo</h2>
        
        <div class="video-grid">
            <!-- Video 1 -->
            <div class="video-card">
                <div class="video-container" onclick="this.querySelector('iframe').src += '&autoplay=1'">
                    <iframe src="https://www.youtube.com/embed/wbfENERdYfk?rel=0&enablejsapi=1&modestbranding=1" 
                            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" 
                            allowfullscreen
                            title="Systèmes de billeterie aérienne"
                            aria-label="Vidéo démo systèmes GDS"
                            loading="lazy"></iframe>
                </div>
                <div class="video-info">
                    <h3 class="video-title">cour de langue </h3>
                   
                </div>
            </div>
            
            <!-- Video 2 -->
            <div class="video-card">
                <div class="video-container" onclick="this.querySelector('iframe').src += '&autoplay=1'">
                    <iframe src="https://www.youtube.com/embed/vslwZy12wwg??rel=0&enablejsapi=1&modestbranding=1" 
                            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" 
                            allowfullscreen
                            title="Études en France"
                            aria-label="Vidéo d'Amina"
                            loading="lazy"></iframe>
                </div>
                <div class="video-info">
                    <h3 class="video-title">SCEANCE 2</h3>
                   
                </div>
            </div>
            
            <!-- Video 3 -->
            <div class="video-card">
                <div class="video-container" onclick="this.querySelector('iframe').src += '&autoplay=1'">
                    <iframe src="https://www.youtube.com/embed/Sj-ko5rJ35o?rel=0&enablejsapi=1&modestbranding=1" 
                            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" 
                            allowfullscreen
                            title="Travail aux USA"
                            aria-label="Vidéo de Paul"
                            loading="lazy"></iframe>
                </div>
                <div class="video-info">
                    <h3 class="video-title"> Study in the USA – Start Your Journey with GLOBAL VISA LTD! 🇺🇸</h3>
                    
                </div>
            </div>
        </div>
    </div>
    </div>
</section>

<!-- CTA Section -->
<section class="cta-section">
    <div class="container">
        <div class="cta-content">
            <h2>Prêt à exceller dans votre test de langue?</h2>
            <p>Contactez-nous dès aujourd'hui pour évaluer votre niveau et choisir le programme de préparation qui vous correspond le mieux. Nos conseillers pédagogiques sont à votre disposition pour répondre à toutes vos questions.</p>
            <a href="https://wa.me/+237687051214" class="btn">Prendre rendez-vous</a>
        </div>
    </div>
</section>

<!-- Footer -->
<footer class="footer">
    <div class="container">
        <div class="footer-grid">
            <div class="footer-col">
                <h4>Global Visa LTD</h4>
                <p>Votre partenaire de confiance pour toutes vos démarches d'immigration et de formation linguistique à l'étranger.</p>
                <div class="social-links" style="margin-top: 20px;">
                    <a href="#" style="color: #bbb; margin-right: 15px; font-size: 1.2rem;"><i class="fab fa-facebook-f"></i></a>
                    <a href="#" style="color: #bbb; margin-right: 15px; font-size: 1.2rem;"><i class="fab fa-twitter"></i></a>
                    <a href="#" style="color: #bbb; margin-right: 15px; font-size: 1.2rem;"><i class="fab fa-instagram"></i></a>
                    <a href="https://www.tiktok.com/@global.visa.ltd?_t=ZM-8wgI7NvyO9Q&_r=1" target="_blank" style="color: #bbb; margin-right: 15px; font-size: 1.2rem;">
  <i class="fab fa-tiktok"></i>
</a>

                    <a href="#" style="color: #bbb; font-size: 1.2rem;"><i class="fab fa-linkedin-in"></i></a>
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
                <h4>Services</h4>
                <ul>
                    <li><a href="evaluation.jsp">Évaluation de profil</a></li>
                    <li><a href="visa.jsp">Demandes de visa</a></li>
                    <li><a href="langue.jsp">Cours de langue</a></li>
                    <li><a href="integration.jsp">Aide à l'intégration</a></li>
                
                </ul>
            </div>
            
            <div class="footer-col">
                <h4>Contact</h4>
                <ul>
                    <li><i class="fas fa-map-marker-alt" style="margin-right: 10px;"></i>Douala-douala Carrefour-Makepe Belavie a la montée du lycée de Makepe</li>
                    <li><i class="fas fa-map-marker-alt" style="margin-right: 10px;"></i>Yaoundé-Immeuble Zassi en face du stade annexe omnisports</li>
                    <li><i class="fas fa-phone" style="margin-right: 10px;"></i>  (+237) 6 97 17 76 36</li>
                    <li><i class="fas fa-envelope" style="margin-right: 10px;"></i>globalvisaltd1@gmail.com</li>
                    <li><i class="fas fa-clock" style="margin-right: 10px;"></i> Lun-Ven: 8h-17h30</li>
                </ul>
            </div>
        </div>
        
        <div class="footer-bottom" style="border-top: 1px solid rgba(255,255,255,0.1); padding-top: 20px; text-align: center;">
            <p style="color: #bbb; font-size: 0.9rem;">&copy; 2025 Global Visa LTD. Tous droits réservés.</p>
        </div>
    </div>
</footer>

<script>
    // Script pour le menu mobile
    const hamburger = document.querySelector('.hamburger');
    const navLinks = document.querySelector('.nav-links');
    
    hamburger.addEventListener('click', () => {
        navLinks.classList.toggle('active');
        hamburger.innerHTML = navLinks.classList.contains('active') ? 
            '<i class="fas fa-times"></i>' : '<i class="fas fa-bars"></i>';
    });
    
    // Script pour les dropdowns en mobile
    const dropdownToggles = document.querySelectorAll('.dropdown-toggle');
    
    dropdownToggles.forEach(toggle => {
        toggle.addEventListener('click', (e) => {
            if (window.innerWidth <= 768) {
                e.preventDefault();
                const dropdown = toggle.parentElement;
                dropdown.classList.toggle('active');
            }
        });
    });
    
    // Script pour le header scroll
    window.addEventListener('scroll', () => {
        const header = document.querySelector('.header');
        header.classList.toggle('scrolled', window.scrollY > 50);
    });
    
    // Script pour les onglets d'examens
    const tabBtns = document.querySelectorAll('.tab-btn');
    const examContents = document.querySelectorAll('.exam-content');
    
    tabBtns.forEach(btn => {
        btn.addEventListener('click', () => {
            // Retirer la classe active de tous les boutons et contenus
            tabBtns.forEach(btn => btn.classList.remove('active'));
            examContents.forEach(content => content.classList.remove('active'));
            
            // Ajouter la classe active au bouton cliqué
            btn.classList.add('active');
            
            // Afficher le contenu correspondant
            const tabId = btn.getAttribute('data-tab');
            document.getElementById(tabId).classList.add('active');
        });
    });
    
    // Script pour le slider de témoignages
    const testimonials = document.querySelectorAll('.testimonial');
    const dots = document.querySelectorAll('.dot');
    let currentSlide = 0;
    
    function showSlide(index) {
        testimonials.forEach(testimonial => testimonial.classList.remove('active'));
        dots.forEach(dot => dot.classList.remove('active'));
        
        testimonials[index].classList.add('active');
        dots[index].classList.add('active');
        currentSlide = index;
    }
    
    dots.forEach(dot => {
        dot.addEventListener('click', () => {
            const slideIndex = parseInt(dot.getAttribute('data-slide'));
            showSlide(slideIndex);
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
    
    // Changement automatique toutes les 5 secondes
    setInterval(() => {
        currentSlide = (currentSlide + 1) % testimonials.length;
        showSlide(currentSlide);
    }, 5000);
</script>

</body>
</html>