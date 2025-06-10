<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Évaluation de Profil | Global Visa LTD</title>
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
        }

        .container {
            width: 100%;
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 20px;
        }

        /* Header Styles */
        .header {
            background: linear-gradient(135deg, rgba(255,255,255,0.98) 0%, rgba(250,250,250,0.97) 100%);
            box-shadow: 0 4px 30px rgba(0, 0, 0, 0.08);
            position: fixed;
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

        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .logo-img {
            height: 50px;
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
            margin-left: 30px;
        }

        .nav-links a {
            text-decoration: none;
            color: var(--dark-color);
            font-weight: 500;
            transition: color 0.3s;
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

        /* Hero Section */
        .evaluation-hero {
            background: linear-gradient(rgba(139, 69, 19, 0.8), rgba(139, 69, 19, 0.8)), 
                        url('${pageContext.request.contextPath}/images/evaluation-hero.jpg');
            background-size: cover;
            background-position: center;
            height: 60vh;
            display: flex;
            align-items: center;
            text-align: center;
            color: var(--light-color);
            padding-top: 80px;
            margin-bottom: 80px;
        }

        .hero-content {
            max-width: 800px;
            margin: 0 auto;
            padding: 0 20px;
        }

        .hero-content h1 {
            font-family: var(--font-heading);
            font-size: 3rem;
            margin-bottom: 20px;
            animation: fadeInUp 1s ease;
        }

        .hero-content p {
            font-size: 1.2rem;
            margin-bottom: 30px;
            animation: fadeInUp 1.2s ease;
        }

        .btn {
            display: inline-block;
            background-color: var(--primary-color);
            color: var(--light-color);
            padding: 15px 35px;
            border-radius: 50px;
            text-decoration: none;
            font-weight: 600;
            transition: all 0.3s;
            border: 2px solid var(--primary-color);
            animation: fadeInUp 1.4s ease;
        }

        .btn:hover {
            background-color: transparent;
            color: var(--light-color);
            transform: translateY(-3px);
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
        }

        /* Process Section */
        .process-section {
            padding: 80px 0;
            background-color: var(--light-color);
        }

        .section-title {
            text-align: center;
            margin-bottom: 60px;
        }

        .section-title h2 {
            font-family: var(--font-heading);
            font-size: 2.5rem;
            color: var(--secondary-color);
            margin-bottom: 20px;
            position: relative;
            display: inline-block;
        }

        .section-title h2::after {
            content: '';
            display: block;
            width: 80px;
            height: 3px;
            background-color: var(--primary-color);
            margin: 20px auto;
        }

        .section-title p {
            max-width: 700px;
            margin: 0 auto;
            font-size: 1.1rem;
        }

        .process-steps {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            gap: 30px;
        }

        .process-step {
            flex: 1;
            min-width: 250px;
            background-color: var(--gray-color);
            padding: 40px 30px;
            border-radius: 10px;
            text-align: center;
            transition: all 0.4s;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.05);
            position: relative;
            overflow: hidden;
        }

        .process-step:hover {
            transform: translateY(-10px);
            box-shadow: 0 15px 30px rgba(0, 0, 0, 0.1);
        }

        .process-step::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 5px;
            background-color: var(--primary-color);
        }

        .step-number {
            display: inline-block;
            width: 50px;
            height: 50px;
            background-color: var(--primary-color);
            color: var(--light-color);
            border-radius: 50%;
            font-size: 1.5rem;
            font-weight: 700;
            line-height: 50px;
            margin-bottom: 20px;
        }

        .process-step h3 {
            font-size: 1.5rem;
            color: var(--secondary-color);
            margin-bottom: 15px;
        }

        .process-step i {
            font-size: 3rem;
            color: var(--primary-color);
            margin-bottom: 20px;
            display: block;
        }

        /* Benefits Section */
        .benefits-section {
            padding: 80px 0;
            background-color: var(--gray-color);
        }

        .benefits-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 30px;
        }

        .benefit-card {
            background-color: var(--light-color);
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.05);
            transition: all 0.4s;
            display: flex;
            flex-direction: column;
        }

        .benefit-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 15px 30px rgba(0, 0, 0, 0.1);
        }

        .benefit-image {
            height: 200px;
            background-size: cover;
            background-position: center;
        }

        .benefit-content {
            padding: 30px;
            flex: 1;
            display: flex;
            flex-direction: column;
        }

        .benefit-content h3 {
            font-size: 1.5rem;
            color: var(--secondary-color);
            margin-bottom: 15px;
        }

        .benefit-content p {
            margin-bottom: 20px;
            flex: 1;
        }

        .benefit-icon {
            font-size: 2.5rem;
            color: var(--primary-color);
            margin-bottom: 20px;
        }

        /* Evaluation Form */
        .evaluation-form-section {
            padding: 80px 0;
            background-color: var(--light-color);
        }

        .form-container {
            max-width: 800px;
            margin: 0 auto;
            background-color: var(--light-color);
            padding: 50px;
            border-radius: 15px;
            box-shadow: 0 20px 40px rgba(0, 0, 0, 0.1);
            position: relative;
            overflow: hidden;
        }

        .form-container::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 10px;
            background: linear-gradient(90deg, var(--primary-color), var(--secondary-color));
        }

        .form-title {
            text-align: center;
            margin-bottom: 40px;
        }

        .form-title h3 {
            font-family: var(--font-heading);
            font-size: 2rem;
            color: var(--secondary-color);
            margin-bottom: 15px;
        }

        .form-title p {
            color: var(--text-color);
        }

        .form-group {
            margin-bottom: 25px;
        }

        .form-group label {
            display: block;
            margin-bottom: 8px;
            font-weight: 500;
            color: var(--secondary-color);
        }

        .form-group input,
        .form-group select,
        .form-group textarea {
            width: 100%;
            padding: 15px;
            border: 1px solid #ddd;
            border-radius: 8px;
            font-family: var(--font-main);
            font-size: 1rem;
            transition: all 0.3s;
        }

        .form-group input:focus,
        .form-group select:focus,
        .form-group textarea:focus {
            border-color: var(--primary-color);
            box-shadow: 0 0 0 3px rgba(230, 126, 34, 0.2);
            outline: none;
        }

        .form-row {
            display: flex;
            gap: 20px;
        }

        .form-row .form-group {
            flex: 1;
        }

        .submit-btn {
            background-color: var(--primary-color);
            color: var(--light-color);
            border: none;
            padding: 15px 30px;
            border-radius: 50px;
            font-size: 1.1rem;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.3s;
            width: 100%;
            margin-top: 10px;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 10px;
        }

        .submit-btn:hover {
            background-color: var(--secondary-color);
            transform: translateY(-3px);
            box-shadow: 0 10px 20px rgba(139, 69, 19, 0.2);
        }

        /* Testimonials */
        .testimonials-section {
            padding: 80px 0;
            background-color: var(--secondary-color);
            color: var(--light-color);
        }

        .testimonials-section .section-title h2 {
            color: var(--light-color);
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

        /* FAQ Section */
        .faq-section {
            padding: 80px 0;
            background-color: var(--gray-color);
        }

        .faq-container {
            max-width: 800px;
            margin: 0 auto;
        }

        .faq-item {
            margin-bottom: 15px;
            border: 1px solid #eee;
            border-radius: 8px;
            overflow: hidden;
            background-color: var(--light-color);
            box-shadow: 0 3px 10px rgba(0, 0, 0, 0.05);
        }

        .faq-question {
            width: 100%;
            padding: 20px;
            background-color: var(--light-color);
            border: none;
            text-align: left;
            font-size: 1.1rem;
            font-weight: 600;
            color: var(--secondary-color);
            cursor: pointer;
            display: flex;
            justify-content: space-between;
            align-items: center;
            transition: all 0.3s;
        }

        .faq-question:hover {
            background-color: #f9f9f9;
        }

        .faq-question i {
            transition: transform 0.3s;
        }

        .faq-question.active i {
            transform: rotate(180deg);
        }

        .faq-answer {
            padding: 0 20px;
            max-height: 0;
            overflow: hidden;
            transition: max-height 0.3s ease-out;
        }

        .faq-answer p {
            padding: 20px 0;
        }

        /* CTA Section */
        .cta-section {
            padding: 80px 0;
            background: linear-gradient(rgba(139, 69, 19, 0.9), rgba(139, 69, 19, 0.9)), 
                        url('${pageContext.request.contextPath}/images/cta-bg.jpg');
            background-size: cover;
            background-position: center;
            color: var(--light-color);
            text-align: center;
        }

        .cta-content {
            max-width: 800px;
            margin: 0 auto;
        }

        .cta-content h2 {
            font-family: var(--font-heading);
            font-size: 2.5rem;
            margin-bottom: 20px;
        }

        .cta-content p {
            font-size: 1.2rem;
            margin-bottom: 30px;
            max-width: 600px;
            margin-left: auto;
            margin-right: auto;
        }

        .cta-buttons {
            display: flex;
            justify-content: center;
            gap: 20px;
            flex-wrap: wrap;
        }

        .btn-outline {
            background-color: transparent;
            border: 2px solid var(--light-color);
            color: var(--light-color);
        }

        .btn-outline:hover {
            background-color: var(--light-color);
            color: var(--secondary-color);
        }

        /* Footer */
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
            transition: color 0.3s;
        }

        .footer-col a:hover {
            color: var(--primary-color);
        }

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
        }

        .newsletter-form button {
            background-color: var(--primary-color);
            color: var(--light-color);
            border: none;
            padding: 0 15px;
            border-radius: 0 5px 5px 0;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .newsletter-form button:hover {
            background-color: #d35400;
        }

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
            transition: color 0.3s;
        }

        .legal-links a:hover {
            color: var(--primary-color);
        }

        /* Animations */
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

        /* Responsive */
        @media (max-width: 992px) {
            .hero-content h1 {
                font-size: 2.5rem;
            }
            
            .process-steps {
                flex-direction: column;
            }
            
            .process-step {
                min-width: 100%;
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
            
            .evaluation-hero {
                height: 50vh;
            }
            
            .hero-content h1 {
                font-size: 2rem;
            }
            
            .section-title h2 {
                font-size: 2rem;
            }
            
            .form-container {
                padding: 30px;
            }
            
            .form-row {
                flex-direction: column;
                gap: 0;
            }
            
            .cta-content h2 {
                font-size: 2rem;
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
                padding: 12px 25px;
            }
            
            .section-title h2 {
                font-size: 1.8rem;
            }
            
            .benefit-card {
                min-width: 100%;
            }
            
            .cta-buttons {
                flex-direction: column;
                gap: 15px;
            }
            
            .cta-buttons .btn {
                width: 100%;
            }
        }

        /* Dropdown Menu */
        .dropdown {
            position: relative;
        }

        .dropdown-toggle {
            display: flex;
            align-items: center;
            gap: 8px;
        }

        .dropdown-icon {
            margin-left: 5px;
            font-size: 0.8em;
            transition: transform 0.3s ease;
        }

        .dropdown-content {
            display: none;
            position: absolute;
            top: 100%;
            left: 0;
            background: linear-gradient(135deg, #ffffff, #f9f9f9);
            min-width: 240px;
            box-shadow: 0 12px 24px rgba(0, 0, 0, 0.15);
            border-radius: 10px;
            z-index: 1000;
            padding: 10px 0;
            opacity: 0;
            transform: translateY(10px);
            transition: all 0.3s ease;
        }

        .dropdown:hover .dropdown-content {
            display: block;
            opacity: 1;
            transform: translateY(0);
        }

        .dropdown-content li {
            list-style: none;
        }

        .dropdown-content a {
            display: flex;
            align-items: center;
            gap: 12px;
            padding: 12px 20px;
            color: #222;
            text-decoration: none;
            font-size: 15px;
            transition: background 0.3s ease, color 0.3s ease;
            border-left: 3px solid transparent;
        }

        .dropdown-content a:hover {
            background-color: #f0f4ff;
            color: #0056b3;
            border-left: 3px solid #0056b3;
        }

        .dropdown-content i {
            width: 22px;
            text-align: center;
            color: #666;
            transition: color 0.3s ease;
        }

        .dropdown-content a:hover i {
            color: #0056b3;
        }

        .dropdown.active .dropdown-icon {
            transform: rotate(180deg);
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(-10px); }
            to { opacity: 1; transform: translateY(0); }
        }
    </style>
</head>
<body>
    <!-- Header -->
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
    <section class="evaluation-hero">
        <div class="hero-content">
            <h1>Évaluation de Profil Personnalisée</h1>
            <p>Découvrez vos options d'immigration avec notre analyse experte et démarrez votre projet en toute confiance.</p>
            <a href="#evaluation-form" class="btn">Prendre rendez-vous <i class="fas fa-calendar-check"></i></a>
        </div>
    </section>

    <!-- Process Section -->
    <section class="process-section">
        <div class="container">
            <div class="section-title">
                <h2>Notre Processus d'Évaluation</h2>
                <p>Une méthodologie rigoureuse pour déterminer la meilleure stratégie d'immigration adaptée à votre profil.</p>
            </div>
            
            <div class="process-steps">
                <div class="process-step">
                    <div class="step-number">1</div>
                    <i class="fas fa-clipboard-list"></i>
                    <h3>Analyse Initiale</h3>
                    <p>Nous examinons vos qualifications, expérience professionnelle, compétences linguistiques et situation personnelle.</p>
                </div>
                
                <div class="process-step">
                    <div class="step-number">2</div>
                    <i class="fas fa-search"></i>
                    <h3>Recherche des Options</h3>
                    <p>Nous identifions tous les programmes d'immigration potentiels correspondant à votre profil.</p>
                </div>
                
                <div class="process-step">
                    <div class="step-number">3</div>
                    <i class="fas fa-chart-line"></i>
                    <h3>Évaluation des Chances</h3>
                    <p>Nous estimons vos probabilités de succès pour chaque option et identifions les points à améliorer.</p>
                </div>
                
                <div class="process-step">
                    <div class="step-number">4</div>
                    <i class="fas fa-road"></i>
                    <h3>Plan d'Action</h3>
                    <p>Nous élaborons une stratégie personnalisée avec les étapes concrètes pour maximiser vos chances.</p>
                </div>
            </div>
        </div>
    </section>

    <!-- Benefits Section -->
    <section class="benefits-section">
        <div class="container">
            <div class="section-title">
                <h2>Pourquoi une Évaluation de Profil ?</h2>
                <p>Découvrez les avantages d'une analyse approfondie de votre situation avant d'entamer vos démarches.</p>
            </div>
            
            <div class="benefits-grid">
                <div class="benefit-card">
                    <div class="benefit-image" style="background-image: url('${pageContext.request.contextPath}/images/partners/developing-female-leaders.jpg');"></div>
                    <div class="benefit-content">
                        <div class="benefit-icon"><i class="fas fa-bullseye"></i></div>
                        <h3>Stratégie Clair</h3>
                        <p>Obtenez une feuille de route précise adaptée à votre situation personnelle et professionnelle.</p>
                        <a href="#" class="read-more">En savoir plus <i class="fas fa-arrow-right"></i></a>
                    </div>
                </div>
                
                <div class="benefit-card">
                    <div class="benefit-image" style="background-image: url('${pageContext.request.contextPath}/images/partners/temps.jpeg');"></div>
                    <div class="benefit-content">
                        <div class="benefit-icon"><i class="fas fa-clock"></i></div>
                        <h3>Gain de Temps</h3>
                        <p>Évitez les démarches inutiles en ciblant dès le départ les programmes qui vous correspondent.</p>
                        <a href="#" class="read-more">En savoir plus <i class="fas fa-arrow-right"></i></a>
                    </div>
                </div>
                
                <div class="benefit-card">
                    <div class="benefit-image" style="background-image: url('${pageContext.request.contextPath}/images/partners/entreprise.jpg');"></div>
                    <div class="benefit-content">
                        <div class="benefit-icon"><i class="fas fa-hand-holding-usd"></i></div>
                        <h3>Économies</h3>
                        <p>Minimisez les coûts en évitant les frais de dossier pour des programmes inadaptés à votre profil.</p>
                        <a href="#" class="read-more">En savoir plus <i class="fas fa-arrow-right"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Evaluation Form Section -->
    <section class="evaluation-form-section" id="evaluation-form">
        <div class="container">
            <div class="form-container">
                <div class="form-title">
                    <h3>Demande d'Évaluation de Profil</h3>
                    <p>Remplissez ce formulaire pour prendre rendez-vous avec l'un de nos conseillers en immigration.</p>
                </div>
                
                <form action="EvaluationServlet" method="POST">
                    <div class="form-row">
                        <div class="form-group">
                            <label for="first-name">Prénom *</label>
                            <input type="text" id="first-name" name="first-name" required>
                        </div>
                        <div class="form-group">
                            <label for="last-name">Nom *</label>
                            <input type="text" id="last-name" name="last-name" required>
                        </div>
                    </div>
                    
                    <div class="form-row">
                        <div class="form-group">
                            <label for="email">Email *</label>
                            <input type="email" id="email" name="email" required>
                        </div>
                        <div class="form-group">
                            <label for="phone">Téléphone *</label>
                            <input type="tel" id="phone" name="phone" required>
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <label for="country">Pays de Résidence Actuelle *</label>
                        <select id="country" name="country" required>
                            <option value="">Sélectionnez un pays</option>
                            <option value="Cameroon">Cameroun</option>
                            <option value="France">France</option>
                            <option value="Canada">Canada</option>
                            <option value="USA">États-Unis</option>
                            <option value="Other">Autre</option>
                        </select>
                    </div>
                    
                    <div class="form-group">
                        <label for="destination">Pays de Destination SOUHAITÉE *</label>
                        <select id="destination" name="destination" required>
                            <option value="">Sélectionnez un pays</option>
                            <option value="Canada">Canada</option>
                            <option value="France">France</option>
                            <option value="USA">États-Unis</option>
                            <option value="UK">Royaume-Uni</option>
                            <option value="Australia">Australie</option>
                            <option value="Germany">Allemagne</option>
                            <option value="Other">Autre</option>
                        </select>
                    </div>
                    
                    <div class="form-group">
                        <label for="program">Type de Programme INTÉRESSÉ *</label>
                        <select id="program" name="program" required>
                            <option value="">Sélectionnez un programme</option>
                            <option value="Study">Études</option>
                            <option value="Work">Travail</option>
                            <option value="Immigration">Immigration permanente</option>
                            <option value="Business">Investissement/Entrepreneuriat</option>
                            <option value="Family">Regroupement familial</option>
                            <option value="Other">Autre</option>
                        </select>
                    </div>
                    
                    <div class="form-group">
                        <label for="message">Informations Complémentaires</label>
                        <textarea id="message" name="message" placeholder="Décrivez brièvement votre situation, vos qualifications et vos objectifs..."></textarea>
                    </div>
                    
                    <button type="submit" class="submit-btn">
                        <i class="fas fa-paper-plane"></i> Envoyer la Demande
                    </button>
                </form>
            </div>
        </div>
    </section>

  
    <!-- FAQ Section -->
    <section class="faq-section">
        <div class="container">
            <div class="section-title">
                <h2>Questions Fréquentes</h2>
                <p>Retrouvez ici les réponses aux questions les plus posées sur notre service d'évaluation.</p>
            </div>
            
            <div class="faq-container">
                <div class="faq-item">
                    <button class="faq-question">
                        Combien de temps dure une évaluation de profil ?
                        <i class="fas fa-chevron-down"></i>
                    </button>
                    <div class="faq-answer">
                        <p>L'évaluation initiale prend généralement entre 60 et 90 minutes. Après cet entretien, nos conseillers ont besoin de 2 à 3 jours ouvrables pour finaliser leur analyse et vous fournir un rapport détaillé.</p>
                    </div>
                </div>
                
                <div class="faq-item">
                    <button class="faq-question">
                        Quels documents dois-je préparer ?
                        <i class="fas fa-chevron-down"></i>
                    </button>
                    <div class="faq-answer">
                        <p>Pour une évaluation précise, nous recommandons d'avoir sous la main : vos diplômes, relevés de notes, CV détaillé, résultats de tests linguistiques (si disponibles), et tout document relatif à votre expérience professionnelle.</p>
                    </div>
                </div>
                
                <div class="faq-item">
                    <button class="faq-question">
                        L'évaluation est-elle payante ?
                        <i class="fas fa-chevron-down"></i>
                    </button>
                    <div class="faq-answer">
                        <p>Oui, notre service d'évaluation approfondie est payant. Cependant, nous offrons une première consultation gratuite de 15 minutes pour évaluer sommairement votre situation et vous expliquer notre processus.</p>
                    </div>
                </div>
                
                <div class="faq-item">
                    <button class="faq-question">
                        Que se passe-t-il après l'évaluation ?
                        <i class="fas fa-chevron-down"></i>
                    </button>
                    <div class="faq-answer">
                        <p>Vous recevrez un rapport complet avec nos recommandations. Si vous décidez de poursuivre avec nos services, nous pouvons vous accompagner dans toutes les étapes suivantes : préparation de dossier, demande de visa, etc.</p>
                    </div>
                </div>
                
                <div class="faq-item">
                    <button class="faq-question">
                        Puis-je faire une évaluation pour plusieurs pays ?
                        <i class="fas fa-chevron-down"></i>
                    </button>
                    <div class="faq-answer">
                        <p>Absolument. Nous pouvons analyser votre admissibilité pour plusieurs destinations et vous conseiller sur le pays qui offre les meilleures perspectives selon votre profil et vos objectifs.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- CTA Section -->
    <section class="cta-section">
        <div class="container">
            <div class="cta-content">
                <h2>Prêt à Démarrer Votre Projet d'Immigration ?</h2>
                <p>Notre équipe d'experts est à votre disposition pour vous guider à chaque étape de votre parcours vers l'étranger.</p>
                <div class="cta-buttons">
                    <a href="#evaluation-form" class="btn">Demander une Évaluation <i class="fas fa-user-check"></i></a>
                    <a href="https://wa.me/+237692586274" class="btn btn-outline">Nous Contacter <i class="fas fa-phone-alt"></i></a>
                </div>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer class="footer">
        <div class="container">
            <div class="footer-grid">
                <div class="footer-col">
                    <div class="footer-logo">
                        <i class="fas fa-globe-europe"></i>
                        <span>GLOBAL VISA LTD</span>
                    </div>
                    <p>Votre partenaire de confiance pour toutes vos démarches d'immigration à l'étranger.</p>
                    <div class="social-links">
                        <a href="https://www.facebook.com/share/16ft3BcgPb/"><i class="fab fa-facebook-f"></i></a>
                       
                        <a href="https://www.instagram.com/agence_voyage_237?utm_source=ig_web_button_share_sheet&igsh=ZDNlZDc0MzIxNw=="><i class="fab fa-instagram"></i></a>
                        <a href="https://www.tiktok.com/@global.visa.ltd?_t=ZM-8wgI7NvyO9Q&_r=1" target="_blank" style="color: #bbb; margin-right: 15px; font-size: 1.2rem;">
  <i class="fab fa-tiktok"></i>
</a>
                    </div>
                </div>
                
                <div class="footer-col">
                    <h4>Nos Services</h4>
                    <ul>
                        <li><a href="evaluation.jsp">Évaluation de profil</a></li>
                        <li><a href="visa.jsp">Demandes de visa</a></li>
                        <li><a href="langue.jsp">Cours de langue</a></li>
                        <li><a href="integration.jsp">Aide à l'intégration</a></li>
                       
                    </ul>
                </div>
                
                <div class="footer-col">
                    <h4>Liens Utiles</h4>
                    <ul>
                        <li><a href="propos.jsp">À propos de nous</a></li>
                        <li><a href="programme.jsp">Programmes</a></li>
                        <li><a href="blog.jsp">Blog</a></li>
                       
                    </ul>
                </div>
                
                <div class="footer-col">
                    <h4>Newsletter</h4>
                    <p>Abonnez-vous pour recevoir nos dernières actualités et conseils.</p>
                    <form class="newsletter-form">
                        <input type="email" placeholder="Votre email">
                        <button type="submit"><i class="fas fa-paper-plane"></i></button>
                    </form>
                </div>
            </div>
            
            <div class="footer-bottom">
                <p>&copy; 2025 GLOBAL VISA LTD. Tous droits réservés.</p>
               
            </div>
        </div>
    </footer>

    <script>
        // Mobile Menu Toggle
        const hamburger = document.querySelector('.hamburger');
        const navLinks = document.querySelector('.nav-links');
        
        hamburger.addEventListener('click', () => {
            navLinks.classList.toggle('active');
            hamburger.classList.toggle('active');
        });
        
        // Sticky Header
        window.addEventListener('scroll', () => {
            const header = document.querySelector('.header');
            header.classList.toggle('scrolled', window.scrollY > 50);
        });
        
        // FAQ Accordion
        const faqQuestions = document.querySelectorAll('.faq-question');
        
        faqQuestions.forEach(question => {
            question.addEventListener('click', () => {
                const answer = question.nextElementSibling;
                const isActive = question.classList.contains('active');
                
                // Close all other items
                faqQuestions.forEach(q => {
                    if (q !== question) {
                        q.classList.remove('active');
                        q.nextElementSibling.style.maxHeight = null;
                    }
                });
                
                // Toggle current item
                question.classList.toggle('active');
                
                if (!isActive) {
                    answer.style.maxHeight = answer.scrollHeight + 'px';
                } else {
                    answer.style.maxHeight = null;
                }
            });
        });
        
        // Testimonial Slider
        const testimonials = document.querySelectorAll('.testimonial');
        const dots = document.querySelectorAll('.dot');
        let currentSlide = 0;
        
        function showSlide(n) {
            testimonials.forEach(testimonial => testimonial.classList.remove('active'));
            dots.forEach(dot => dot.classList.remove('active'));
            
            currentSlide = (n + testimonials.length) % testimonials.length;
            testimonials[currentSlide].classList.add('active');
            dots[currentSlide].classList.add('active');
        }
        
        dots.forEach((dot, index) => {
            dot.addEventListener('click', () => showSlide(index));
        });
        
        // Auto slide change every 5 seconds
        setInterval(() => {
            showSlide(currentSlide + 1);
        }, 5000);
        
        // Dropdown Menu
        const dropdowns = document.querySelectorAll('.dropdown');
        
        dropdowns.forEach(dropdown => {
            const toggle = dropdown.querySelector('.dropdown-toggle');
            
            toggle.addEventListener('click', (e) => {
                e.preventDefault();
                dropdown.classList.toggle('active');
            });
        });
        
        // Close dropdown when clicking outside
        document.addEventListener('click', (e) => {
            if (!e.target.closest('.dropdown')) {
                dropdowns.forEach(dropdown => {
                    dropdown.classList.remove('active');
                });
            }
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
                        top: targetElement.offsetTop - 80,
                        behavior: 'smooth'
                    });
                    
                    // Close mobile menu if open
                    if (navLinks.classList.contains('active')) {
                        navLinks.classList.remove('active');
                        hamburger.classList.remove('active');
                    }
                }
            });
        });
    </script>
</body>
</html>                                                  