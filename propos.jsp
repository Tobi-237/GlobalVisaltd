<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>À propos - Global Visa LTD | Votre partenaire en immigration</title>
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
            background-color: var(--light-color);
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
     

        /* Hero Section */
        .about-hero {
            background: linear-gradient(rgba(139, 69, 19, 0.8), rgba(139, 69, 19, 0.8)), url('team.jpg') no-repeat center center/cover;
            height: 60vh;
            display: flex;
            align-items: center;
            text-align: center;
            color: var(--light-color);
            position: relative;
            margin-bottom: 80px;
        }

        .about-hero-content {
            max-width: 800px;
            margin: 0 auto;
            animation: fadeInUp 1s ease;
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

        .about-hero h1 {
            font-family: var(--font-heading);
            font-size: 3rem;
            margin-bottom: 20px;
            font-weight: 700;
        }

        .breadcrumb {
            display: flex;
            justify-content: center;
            list-style: none;
            margin-top: 20px;
        }

        .breadcrumb li {
            margin: 0 10px;
            position: relative;
        }

        .breadcrumb li:after {
            content: '/';
            position: absolute;
            right: -15px;
            color: var(--light-color);
            opacity: 0.7;
        }

        .breadcrumb li:last-child:after {
            display: none;
        }

        .breadcrumb a {
            color: var(--light-color);
            text-decoration: none;
            transition: var(--transition);
        }

        .breadcrumb a:hover {
            color: var(--primary-color);
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

        /* About Intro */
        .about-intro {
            background-color: var(--gray-color);
            padding: 100px 0;
            position: relative;
            overflow: hidden;
        }

        .about-intro .container {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 50px;
            align-items: center;
        }

        .about-intro-image {
            position: relative;
            border-radius: 15px;
            overflow: hidden;
            box-shadow: 0 20px 40px rgba(0, 0, 0, 0.15);
            transform: rotate(-2deg);
            transition: var(--transition);
        }

        .about-intro-image:hover {
            transform: rotate(0deg) scale(1.02);
        }

        .about-intro-image img {
            width: 100%;
            height: auto;
            display: block;
            transition: transform 0.5s ease;
        }

        .about-intro-image:hover img {
            transform: scale(1.05);
        }

        .about-intro-content h2 {
            text-align: left;
            margin-bottom: 30px;
        }

        .about-intro-content h2::after {
            margin: 20px 0;
        }

        .about-intro-content p {
            margin-bottom: 20px;
            font-size: 1.05rem;
        }

        .signature {
            margin-top: 30px;
            font-family: var(--font-heading);
            font-style: italic;
            font-size: 1.2rem;
            color: var(--secondary-color);
        }

        /* Advantages Section */
        .advantages {
            background-color: var(--light-color);
            position: relative;
        }

        .advantages::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: url('pattern.png') repeat;
            opacity: 0.03;
            z-index: 0;
        }

        .advantages .container {
            position: relative;
            z-index: 1;
        }

        .advantages-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 30px;
        }

        .advantage-card {
            background-color: var(--light-color);
            border-radius: 10px;
            padding: 40px 30px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.05);
            transition: var(--transition);
            position: relative;
            overflow: hidden;
            border: 1px solid rgba(139, 69, 19, 0.1);
            z-index: 1;
        }

        .advantage-card::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 5px;
            height: 0;
            background: linear-gradient(to bottom, var(--primary-color), var(--secondary-color));
            transition: height 0.5s ease;
            z-index: -1;
        }

        .advantage-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 15px 40px rgba(0, 0, 0, 0.1);
        }

        .advantage-card:hover::before {
            height: 100%;
        }

        .advantage-icon {
            font-size: 3rem;
            color: var(--primary-color);
            margin-bottom: 20px;
            transition: var(--transition);
        }

        .advantage-card:hover .advantage-icon {
            color: var(--light-color);
            transform: rotate(15deg) scale(1.1);
        }

        .advantage-card h3 {
            font-size: 1.4rem;
            color: var(--secondary-color);
            margin-bottom: 15px;
            transition: var(--transition);
        }

        .advantage-card:hover h3 {
            color: var(--light-color);
        }

        .advantage-card p {
            transition: var(--transition);
        }

        .advantage-card:hover p {
            color: rgba(255, 255, 255, 0.9);
        }

        /* Team Section */
        .team {
            background-color: var(--gray-color);
            padding: 100px 0;
        }

        .team-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 30px;
        }

        .team-member {
            background-color: var(--light-color);
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.05);
            transition: var(--transition);
            text-align: center;
        }

        .team-member:hover {
            transform: translateY(-10px);
            box-shadow: 0 15px 40px rgba(0, 0, 0, 0.1);
        }

        .member-image {
            height: 300px;
            background-size: cover;
            background-position: center;
            position: relative;
            transition: transform 0.5s ease;
        }

        .team-member:hover .member-image {
            transform: scale(1.05);
        }

        .member-social {
            position: absolute;
            bottom: 20px;
            left: 0;
            width: 100%;
            display: flex;
            justify-content: center;
            gap: 10px;
            opacity: 0;
            transform: translateY(20px);
            transition: all 0.3s ease;
        }

        .team-member:hover .member-social {
            opacity: 1;
            transform: translateY(0);
        }

        .member-social a {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            width: 40px;
            height: 40px;
            background-color: rgba(255, 255, 255, 0.9);
            color: var(--primary-color);
            border-radius: 50%;
            transition: var(--transition);
            text-decoration: none;
        }

        .member-social a:hover {
            background-color: var(--primary-color);
            color: var(--light-color);
            transform: translateY(-5px);
        }

        .member-info {
            padding: 25px;
        }

        .member-info h3 {
            font-size: 1.3rem;
            color: var(--secondary-color);
            margin-bottom: 5px;
        }

        .member-info p {
            color: var(--primary-color);
            font-weight: 500;
            margin-bottom: 15px;
        }

        .member-description {
            font-size: 0.9rem;
            color: var(--text-color);
        }

        /* Stats Section */
        .stats {
            background: linear-gradient(rgba(139, 69, 19, 0.9), rgba(139, 69, 19, 0.9)), url('world-map.jpg') no-repeat center center/cover;
            color: var(--light-color);
            padding: 100px 0;
            text-align: center;
        }

        .stats-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 30px;
        }

        .stat-item {
            padding: 30px;
            position: relative;
        }

        .stat-item::after {
            content: '';
            position: absolute;
            right: 0;
            top: 50%;
            transform: translateY(-50%);
            width: 1px;
            height: 60px;
            background-color: rgba(255, 255, 255, 0.2);
        }

        .stat-item:last-child::after {
            display: none;
        }

        .stat-number {
            font-size: 3.5rem;
            font-weight: 700;
            margin-bottom: 10px;
            color: var(--primary-color);
            font-family: var(--font-heading);
        }

        .stat-label {
            font-size: 1.1rem;
            opacity: 0.9;
        }

        /* Testimonials Section (identique à l'accueil) */
        .testimonials {
            background-color: var(--secondary-color);
            color: var(--light-color);
            position: relative;
            overflow: hidden;
        }

        .testimonials h2 {
            color: var(--light-color);
        }

        .testimonials h2::after {
            background-color: var(--primary-color);
        }
          
        /* Responsive Styles */
        @media (max-width: 992px) {
            .about-hero h1 {
                font-size: 2.5rem;
            }
            
            .stat-number {
                font-size: 3rem;
            }
        }

        @media (max-width: 768px) {
            .nav-links {
                position: fixed;
                top: 80px;
                left: -100%;
                width: 100%;
                height: calc(100vh - 80px);
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
            
            .about-hero {
                height: 50vh;
            }
            
            .about-hero h1 {
                font-size: 2rem;
            }
            
            h2 {
                font-size: 2rem;
            }

            .about-intro .container {
                grid-template-columns: 1fr;
            }

            .about-intro-content h2 {
                text-align: center;
            }

            .about-intro-content h2::after {
                margin: 20px auto;
            }

            .stat-item::after {
                display: none;
            }
        }

        @media (max-width: 576px) {
            .about-hero {
                height: 40vh;
            }
            
            .about-hero h1 {
                font-size: 1.8rem;
            }
            
            .stat-number {
                font-size: 2.5rem;
            }
            
            .advantage-card {
                padding: 30px 20px;
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
                <li><a href="propos.jsp" class="active"><i class="fas fa-info-circle"></i> À propos</a></li>

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
                <li><a href="blog.jsp"><i class="fas fa-newspaper"></i> Blog</a></li>
                
            </ul>

            <div class="hamburger">
                <i class="fas fa-bars"></i>
            </div>
        </nav>
    </div>
</header>

<!-- Hero Section -->
<section class="about-hero">
    <div class="container">
        <div class="about-hero-content">
            <h1>À propos de Global Visa LTD</h1>
            <p>Votre partenaire de confiance pour réaliser vos projets d'immigration</p>
            <ul class="breadcrumb">
                <li><a href="accueil.jsp">Accueil</a></li>
                <li><span>À propos</span></li>
            </ul>
        </div>
    </div>
</section>

<!-- About Intro Section -->
<section class="about-intro">
    <div class="container">
        <div class="about-intro-image">
            <img src="famille.jpg" alt="L'équipe Global Visa LTD">
        </div>
        <div class="about-intro-content">
            <h2>Notre histoire et notre mission</h2>
            <p>Fondée en 2019, Global Visa LTD s'est rapidement imposée comme un leader dans le domaine des services d'immigration. Notre agence est née de la volonté d'offrir un accompagnement personnalisé et professionnel à toutes les personnes souhaitant réaliser leur projet d'immigration.</p>
            <p>Notre mission est de simplifier les démarches administratives souvent complexes liées à l'immigration, tout en offrant des services complémentaires qui garantissent la réussite de votre projet à l'étranger.</p>
            <p>Avec des bureaux à Douala et Yaoundé, nous accompagnons chaque année des centaines de clients vers une nouvelle vie à l'étranger.</p>
            <div class="signature">L'équipe Global Visa LTD</div>
        </div>
    </div>
</section>

<!-- Advantages Section -->
<section class="advantages">
    <div class="container">
        <h2>Nos avantages exclusifs</h2>
        <p class="subtitle">Découvrez pourquoi nous sommes le partenaire idéal pour votre projet d'immigration</p>
        
        <div class="advantages-grid">
            <div class="advantage-card">
                <div class="advantage-icon">
                    <i class="fas fa-shield-alt"></i>
                </div>
                <h3>Fiabilité absolue</h3>
                <p>Nous travaillons dans le strict respect des lois d'immigration de chaque pays, garantissant la légalité et la sécurité de toutes nos procédures.</p>
            </div>
            
            <div class="advantage-card">
                <div class="advantage-icon">
                    <i class="fas fa-user-clock"></i>
                </div>
                <h3>Traitement en temps réel</h3>
                <p>Grâce à notre système de suivi innovant, vos demandes sont traitées sans délai et vous êtes informé en temps réel de l'avancement de votre dossier.</p>
            </div>
            
            <div class="advantage-card">
                <div class="advantage-icon">
                    <i class="fas fa-handshake"></i>
                </div>
                <h3>Respect des engagements</h3>
                <p>Nous tenons toutes nos promesses avec un taux de réussite de 92% pour les dossiers complets. Votre réussite est notre priorité absolue.</p>
            </div>
            
            <div class="advantage-card">
                <div class="advantage-icon">
                    <i class="fas fa-heart"></i>
                </div>
                <h3>Service impeccable</h3>
                <p>Une équipe dévouée et disponible 7j/7 pour répondre à toutes vos questions et vous accompagner à chaque étape de votre projet.</p>
            </div>
            
            <div class="advantage-card">
                <div class="advantage-icon">
                    <i class="fas fa-graduation-cap"></i>
                </div>
                <h3>Stages après formation</h3>
                <p>Nos formations en billetterie débouchent sur des opportunités de stage dans des agences partenaires pour une expérience professionnelle concrète.</p>
            </div>
            
            <div class="advantage-card">
                <div class="advantage-icon">
                    <i class="fas fa-network-wired"></i>
                </div>
                <h3>Réseau d'agences partenaires</h3>
                <p>Nous vous mettons en relation avec notre réseau international d'agences partenaires pour faciliter votre intégration à l'étranger.</p>
            </div>
            
            <div class="advantage-card">
                <div class="advantage-icon">
                    <i class="fas fa-university"></i>
                </div>
                <h3>Accès aux écoles partenaires</h3>
                <p>Bénéficiez des conditions privilégiées dans nos établissements  de reference à l'étranger grâce à nos accords exclusifs.</p>
            </div>
            
            <div class="advantage-card">
                <div class="advantage-icon">
                    <i class="fas fa-lock"></i>
                </div>
                <h3>Procédures sécurisées</h3>
                <p>Nos méthodes exclusives et notre compte bloqué garantissent la sécurité de vos fonds jusqu'à l'obtention de votre visa.</p>
            </div>
        </div>
    </div>
</section>



<!-- Stats Section -->
<section class="stats">
    <div class="container">
        <h2>Global Visa LTD en chiffres</h2>
        <p class="subtitle">Notre impact et notre expérience au service de votre réussite</p>
        
        <div class="stats-grid">
            <div class="stat-item">
                <div class="stat-number">5+</div>
                <div class="stat-label">Années d'expérience</div>
            </div>
            
            <div class="stat-item">
                <div class="stat-number">2500+</div>
                <div class="stat-label">Clients satisfaits</div>
            </div>
            
            <div class="stat-item">
                <div class="stat-number">92%</div>
                <div class="stat-label">Taux de réussite</div>
            </div>
            
            <div class="stat-item">
                <div class="stat-number">15+</div>
                <div class="stat-label">Pays couverts</div>
            </div>
            
            <div class="stat-item">
                <div class="stat-number">50+</div>
                <div class="stat-label">Partenariats</div>
            </div>
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
                    <li><i class="fas fa-phone-alt"></i> (+237) 6 97 17 76 36 - Douala</li>
                    <li><i class="fas fa-phone-alt"></i> (+237) 6 20 27 96 30 - Yaoundé</li>
                    <li><i class="fas fa-envelope"></i>globalvisaltd1@gmail.com</li>
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
    
    // Testimonial Slider
    const testimonials = document.querySelectorAll('.testimonial');
    const dots = document.querySelectorAll('.dot');
    let currentTestimonial = 0;
    
    function showTestimonial(n) {
        testimonials.forEach(testimonial => testimonial.classList.remove('active'));
        dots.forEach(dot => dot.classList.remove('active'));
        
        currentTestimonial = (n + testimonials.length) % testimonials.length;
        testimonials[currentTestimonial].classList.add('active');
        dots[currentTestimonial].classList.add('active');
    }
    
    dots.forEach((dot, index) => {
        dot.addEventListener('click', () => showTestimonial(index));
    });
    
    // Auto testimonial change every 7 seconds
    setInterval(() => showTestimonial(currentTestimonial + 1), 7000);
    
    // Header Scroll Effect
    window.addEventListener('scroll', () => {
        const header = document.querySelector('.header');
        header.classList.toggle('scrolled', window.scrollY > 50);
    });
    
    // Animation on scroll
    const animateOnScroll = () => {
        const elements = document.querySelectorAll('.advantage-card, .team-member');
        
        elements.forEach(element => {
            const elementPosition = element.getBoundingClientRect().top;
            const screenPosition = window.innerHeight / 1.2;
            
            if (elementPosition < screenPosition) {
                element.style.opacity = '1';
                element.style.transform = 'translateY(0)';
            }
        });
    };
    
    // Set initial state for animated elements
    document.querySelectorAll('.advantage-card, .team-member').forEach(el => {
        el.style.opacity = '0';
        el.style.transform = 'translateY(20px)';
        el.style.transition = 'all 0.6s ease';
    });
    
    window.addEventListener('load', animateOnScroll);
    window.addEventListener('scroll', animateOnScroll);
</script>

</body>
</html>