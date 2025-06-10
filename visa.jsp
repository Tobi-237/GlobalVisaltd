<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Global Visa LTD - Services de Visa</title>
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600;700&family=Playfair+Display:wght@400;500;600;700&display=swap" rel="stylesheet">
    <!-- Animate.css -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css">
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
            padding-top: 80px;
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

        /* Header Styles (identique à la page d'accueil pour la cohérence) */
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

        .hamburger {
            display: none;
            cursor: pointer;
            font-size: 24px;
            color: var(--dark-color);
        }

        /* Hero Section Visa */
        .visa-hero {
            background: linear-gradient(rgba(0, 0, 0, 0.7), rgba(0, 0, 0, 0.7)), url('visa-hero-bg.jpg') no-repeat center center/cover;
            height: 60vh;
            display: flex;
            align-items: center;
            text-align: center;
            color: var(--light-color);
            position: relative;
            overflow: hidden;
        }

        .visa-hero::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(139, 69, 19, 0.6);
            z-index: 1;
        }

        .visa-hero-content {
            position: relative;
            z-index: 2;
            max-width: 800px;
            margin: 0 auto;
            padding: 0 20px;
        }

        .visa-hero h1 {
            font-family: var(--font-heading);
            font-size: 3rem;
            margin-bottom: 20px;
            animation: fadeInDown 1s both;
        }

        .visa-hero p {
            font-size: 1.2rem;
            margin-bottom: 30px;
            animation: fadeInUp 1s both 0.3s;
        }

        /* Visa Process Section */
        .visa-process {
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
            position: relative;
            display: inline-block;
            margin-bottom: 20px;
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
            color: var(--text-color);
        }

        .process-steps {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 30px;
            margin-top: 50px;
        }

        .process-step {
            background-color: var(--gray-color);
            padding: 30px;
            border-radius: 10px;
            text-align: center;
            transition: all 0.3s ease;
            position: relative;
            overflow: hidden;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.05);
        }

        .process-step:hover {
            transform: translateY(-10px);
            box-shadow: 0 15px 30px rgba(0, 0, 0, 0.1);
        }

        .process-step-icon {
            width: 80px;
            height: 80px;
            background-color: var(--primary-color);
            color: var(--light-color);
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 auto 20px;
            font-size: 2rem;
            transition: all 0.3s;
        }

        .process-step:hover .process-step-icon {
            background-color: var(--secondary-color);
            transform: rotate(15deg) scale(1.1);
        }

        .process-step h3 {
            font-size: 1.3rem;
            color: var(--secondary-color);
            margin-bottom: 15px;
        }

        /* Visa Types Section */
        .visa-types {
            padding: 80px 0;
            background-color: var(--gray-color);
        }

        .visa-cards {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 30px;
        }

        .visa-card {
            background-color: var(--light-color);
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.05);
            transition: all 0.3s ease;
        }

        .visa-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 15px 30px rgba(0, 0, 0, 0.1);
        }

        .visa-card-image {
            height: 200px;
            background-size: cover;
            background-position: center;
            position: relative;
        }

        .visa-card-image::after {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: linear-gradient(to bottom, rgba(139, 69, 19, 0.1), rgba(139, 69, 19, 0.7));
        }

        .visa-card-content {
            padding: 30px;
        }

        .visa-card h3 {
            font-size: 1.5rem;
            color: var(--secondary-color);
            margin-bottom: 15px;
            position: relative;
            display: inline-block;
        }

        .visa-card h3::after {
            content: '';
            display: block;
            width: 50px;
            height: 2px;
            background-color: var(--primary-color);
            margin-top: 10px;
        }

        .visa-card ul {
            list-style: none;
            margin: 20px 0;
        }

        .visa-card ul li {
            margin-bottom: 10px;
            display: flex;
            align-items: flex-start;
        }

        .visa-card ul li i {
            color: var(--primary-color);
            margin-right: 10px;
            margin-top: 3px;
        }

        /* Schengen Section */
        .schengen-section {
            padding: 80px 0;
            background-color: var(--light-color);
            position: relative;
            overflow: hidden;
        }

        .schengen-section::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: url('schengen-map.png') no-repeat center center/contain;
            opacity: 0.05;
            z-index: 0;
        }

        .schengen-content {
            position: relative;
            z-index: 1;
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 50px;
            align-items: center;
        }

        .schengen-text {
            animation: fadeInLeft 1s both;
        }

        .schengen-image {
            animation: fadeInRight 1s both;
        }

        .schengen-image img {
            width: 100%;
            border-radius: 10px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
        }

        .schengen-text h2 {
            font-family: var(--font-heading);
            font-size: 2.5rem;
            color: var(--secondary-color);
            margin-bottom: 20px;
        }

        .schengen-text p {
            margin-bottom: 20px;
            font-size: 1.1rem;
        }

        .schengen-countries {
            display: flex;
            flex-wrap: wrap;
            gap: 10px;
            margin-top: 30px;
        }

        .country-tag {
            background-color: var(--primary-color);
            color: var(--light-color);
            padding: 5px 15px;
            border-radius: 50px;
            font-size: 0.9rem;
            font-weight: 500;
        }

        /* CTA Section */
        .cta-section {
            padding: 80px 0;
            background: linear-gradient(rgba(139, 69, 19, 0.9), rgba(139, 69, 19, 0.9)), url('world-map-bg.jpg') no-repeat center center/cover;
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
            animation: fadeInDown 1s both;
        }

        .cta-content p {
            font-size: 1.2rem;
            margin-bottom: 30px;
            animation: fadeInUp 1s both 0.3s;
        }

        .btn {
            display: inline-block;
            background-color: var(--primary-color);
            color: var(--light-color);
            padding: 15px 40px;
            border-radius: 50px;
            text-decoration: none;
            font-weight: 600;
            transition: all 0.3s;
            border: 2px solid var(--primary-color);
            font-size: 1.1rem;
            animation: fadeIn 1s both 0.6s;
        }

        .btn:hover {
            background-color: transparent;
            color: var(--light-color);
            transform: translateY(-3px);
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
        }
        /* Ajoutez ceci dans votre balise style */
.dropdown-content {
    display: none;
    position: absolute;
    background-color: var(--light-color);
    min-width: 220px;
    box-shadow: 0 8px 16px rgba(0,0,0,0.1);
    border-radius: 8px;
    z-index: 100;
    padding: 10px 0;
    top: 100%;
    left: 0;
}

.dropdown-content.show {
    display: block;
    animation: fadeIn 0.3s both;
}

.dropdown-content li {
    margin: 0;
    padding: 0;
}

.dropdown-content a {
    padding: 10px 20px;
    display: block;
    color: var(--dark-color);
    transition: all 0.3s;
}

.dropdown-content a:hover {
    background-color: var(--gray-color);
    color: var(--primary-color);
    padding-left: 25px;
}

.dropdown-toggle .dropdown-icon {
    transition: transform 0.3s;
    font-size: 0.8em;
}

.dropdown-content.show + .dropdown-toggle .dropdown-icon {
    transform: rotate(180deg);
}

@media (max-width: 768px) {
    .dropdown-content {
        position: static;
        box-shadow: none;
        padding-left: 20px;
        display: none;
    }
    
    .dropdown-content.show {
        display: block;
    }
}

        /* Footer (identique à la page d'accueil pour la cohérence) */
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

        .footer-bottom {
            border-top: 1px solid rgba(255, 255, 255, 0.1);
            padding: 20px 0;
            text-align: center;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        /* Responsive Design */
        @media (max-width: 992px) {
            .visa-hero h1 {
                font-size: 2.5rem;
            }
            
            .section-title h2 {
                font-size: 2.2rem;
            }
            
            .schengen-text h2 {
                font-size: 2rem;
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
            
            .visa-hero {
                height: 50vh;
            }
            
            .visa-hero h1 {
                font-size: 2rem;
            }
            
            .section-title h2 {
                font-size: 2rem;
            }
            
            .schengen-content {
                grid-template-columns: 1fr;
                gap: 30px;
            }
            
            .schengen-text, .schengen-image {
                animation: none;
            }
        }

        @media (max-width: 576px) {
            .visa-hero h1 {
                font-size: 1.8rem;
            }
            
            .visa-hero p {
                font-size: 1rem;
            }
            
            .section-title h2 {
                font-size: 1.8rem;
            }
            
            .process-step {
                padding: 20px;
            }
            
            .visa-card-content {
                padding: 20px;
            }
            
            .cta-content h2 {
                font-size: 2rem;
            }
        }

        /* Animations */
        @keyframes float {
            0%, 100% {
                transform: translateY(0);
            }
            50% {
                transform: translateY(-10px);
            }
        }

        .floating {
            animation: float 3s ease-in-out infinite;
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
<section class="visa-hero">
    <div class="visa-hero-content">
        <h1>Services de Visa Professionnels</h1>
        <p>Nous simplifions le processus complexe d'obtention de visa pour vous permettre de réaliser vos projets à l'étranger en toute sérénité.</p>
        
    </div>
</section>

<!-- Visa Process Section -->
<section class="visa-process">
    <div class="container">
        <div class="section-title">
            <h2>Notre Processus Simplifié</h2>
            <p>Nous accompagnons chaque étape de votre demande de visa pour maximiser vos chances de succès.</p>
        </div>
        
        <div class="process-steps">
            <div class="process-step animate__animated animate__fadeInUp">
                <div class="process-step-icon">
                    <i class="fas fa-search"></i>
                </div>
                <h3>Évaluation Initiale</h3>
                <p>Analyse approfondie de votre profil et de vos objectifs pour déterminer le type de visa le plus adapté.</p>
            </div>
            
            <div class="process-step animate__animated animate__fadeInUp" style="animation-delay: 0.2s;">
                <div class="process-step-icon">
                    <i class="fas fa-clipboard-list"></i>
                </div>
                <h3>Préparation du Dossier</h3>
                <p>Collecte et vérification de tous les documents nécessaires pour constituer un dossier solide.</p>
            </div>
            
            <div class="process-step animate__animated animate__fadeInUp" style="animation-delay: 0.4s;">
                <div class="process-step-icon">
                    <i class="fas fa-file-signature"></i>
                </div>
                <h3>Soumission Officielle</h3>
                <p>Dépôt de votre demande auprès des autorités compétentes avec suivi rigoureux.</p>
            </div>
            
            <div class="process-step animate__animated animate__fadeInUp" style="animation-delay: 0.6s;">
                <div class="process-step-icon">
                    <i class="fas fa-plane"></i>
                </div>
                <h3>Préparation au Départ</h3>
                <p>Conseils et assistance pour votre installation dans le pays de destination.</p>
            </div>
        </div>
    </div>
</section>

<!-- Visa Types Section -->
<section class="visa-types">
    <div class="container">
        <div class="section-title">
            <h2>Types de Visa</h2>
            <p>Nous gérons tous les types de demandes de visa pour répondre à vos besoins spécifiques.</p>
        </div>
        
        <div class="visa-cards">
            <!-- Visa Étudiant -->
            <div class="visa-card animate__animated animate__fadeInLeft">
                <div class="visa-card-image" style="background-image: url('etude.jpg');"></div>
                <div class="visa-card-content">
                    <h3>Visa Étudiant</h3>
                    <p>Poursuivez vos études dans les meilleures universités à l'étranger.</p>
                    <ul>
                        <li><i class="fas fa-check"></i> Admission universitaire garantie</li>
                        <li><i class="fas fa-check"></i> Assistance pour les bourses</li>
                        <li><i class="fas fa-check"></i> Préparation aux entretiens</li>
                        <li><i class="fas fa-check"></i> Hébergement étudiant</li>
                    </ul>
                    <a href="https://wa.me/+237692586274" class="btn">En savoir plus</a>
                </div>
            </div>
            
            <!-- Visa Touristique -->
            <div class="visa-card animate__animated animate__fadeInUp">
                <div class="visa-card-image" style="background-image: url('tourisme.jpg');"></div>
                <div class="visa-card-content">
                    <h3>Visa Touristique</h3>
                    <p>Découvrez le monde sans tracas administratifs.</p>
                    <ul>
                        <li><i class="fas fa-check"></i> Court ou long séjour</li>
                        <li><i class="fas fa-check"></i> Multiples entrées</li>
                        <li><i class="fas fa-check"></i> Assurance voyage incluse</li>
                        <li><i class="fas fa-check"></i> Itinéraires personnalisés</li>
                    </ul>
                    <a href="https://wa.me/+237673730686" class="btn">En savoir plus</a>
                </div>
            </div>
            
            <!-- Visa Travail -->
            <div class="visa-card animate__animated animate__fadeInRight">
                <div class="visa-card-image" style="background-image: url('taf.jpg');"></div>
                <div class="visa-card-content">
                    <h3>Visa Travail</h3>
                    <p>Accédez au marché du travail international avec facilité.</p>
                    <ul>
                        <li><i class="fas fa-check"></i> Offres d'emploi vérifiées</li>
                        <li><i class="fas fa-check"></i> Contrats de travail</li>
                        <li><i class="fas fa-check"></i> Permis de travail</li>
                        <li><i class="fas fa-check"></i> Assistance fiscale</li>
                    </ul>
                    <a href="https://wa.me/+237692586274" class="btn">En savoir plus</a>
                </div>
            </div>
            
            <!-- Résidence Permanente -->
            <div class="visa-card animate__animated animate__fadeInLeft">
                <div class="visa-card-image" style="background-image: url('resi.jpg');"></div>
                <div class="visa-card-content">
                    <h3>Résidence Permanente</h3>
                    <p>Établissez-vous durablement dans le pays de votre choix.</p>
                    <ul>
                        <li><i class="fas fa-check"></i> Programmes d'immigration</li>
                        <li><i class="fas fa-check"></i> Regroupement familial</li>
                        <li><i class="fas fa-check"></i> Investissement immobilier</li>
                        <li><i class="fas fa-check"></i> Citoyenneté à long terme</li>
                    </ul>
                    <a href="https://wa.me/+237673730686" class="btn">En savoir plus</a>
                </div>
            </div>
            
            <!-- Visa Affaires -->
            <div class="visa-card animate__animated animate__fadeInUp">
                <div class="visa-card-image" style="background-image: url('affaire.jpg');"></div>
                <div class="visa-card-content">
                    <h3>Visa Affaires</h3>
                    <p>Développez votre entreprise à l'international sans contraintes.</p>
                    <ul>
                        <li><i class="fas fa-check"></i> Voyages fréquents</li>
                        <li><i class="fas fa-check"></i> Assistance aux investisseurs</li>
                        <li><i class="fas fa-check"></i> Création d'entreprise</li>
                        <li><i class="fas fa-check"></i> Fiscalité internationale</li>
                    </ul>
                    <a href="https://wa.me/+237697177636" class="btn">En savoir plus</a>
                </div>
            </div>
            
            <!-- Visa Schengen -->
            <div class="visa-card animate__animated animate__fadeInRight">
                <div class="visa-card-image" style="background-image: url('shengen.jpg');"></div>
                <div class="visa-card-content">
                    <h3>Visa Schengen</h3>
                    <p>Accédez librement à l'espace européen sans frontières.</p>
                    <ul>
                        <li><i class="fas fa-check"></i> Court ou long séjour</li>
                        <li><i class="fas fa-check"></i> Couverture multiple pays</li>
                        <li><i class="fas fa-check"></i> Assistance consulaire</li>
                        <li><i class="fas fa-check"></i> Renouvellement simplifié</li>
                    </ul>
                    <a href="https://wa.me/+237671339388" class="btn">En savoir plus</a>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Schengen Section -->
<section class="schengen-section">
    <div class="container">
        <div class="schengen-content">
            <div class="schengen-text">
                <h2>Espace Schengen</h2>
                <p>L'espace Schengen est une zone de libre circulation comprenant 26 pays européens qui ont aboli les contrôles aux frontières intérieures.</p>
                <p>Un visa Schengen vous permet de voyager librement dans tous ces pays avec un seul document, simplifiant considérablement vos déplacements en Europe.</p>
                <p>Nous vous accompagnons pour obtenir votre visa Schengen rapidement et efficacement, quelle que soit votre destination principale.</p>
                
                <div class="schengen-countries">
                    <span class="country-tag">France</span>
                    <span class="country-tag">Allemagne</span>
                    <span class="country-tag">Italie</span>
                    <span class="country-tag">Espagne</span>
                    <span class="country-tag">Pays-Bas</span>
                    <span class="country-tag">Belgique</span>
                    <span class="country-tag">Luxembourg</span>
                    <span class="country-tag">Suisse</span>
                    <span class="country-tag">Autriche</span>
                    <span class="country-tag">Portugal</span>
                    <span class="country-tag">Grèce</span>
                    <span class="country-tag">Suède</span>
                    <span class="country-tag">Norvège</span>
                    <span class="country-tag">Finlande</span>
                    <span class="country-tag">Danemark</span>
                    <span class="country-tag">Islande</span>
                    <span class="country-tag">Pologne</span>
                    <span class="country-tag">République Tchèque</span>
                    <span class="country-tag">Hongrie</span>
                    <span class="country-tag">Slovaquie</span>
                    <span class="country-tag">Slovénie</span>
                    <span class="country-tag">Estonie</span>
                    <span class="country-tag">Lettonie</span>
                    <span class="country-tag">Lituanie</span>
                    <span class="country-tag">Malte</span>
                </div>
            </div>
            
            <div class="schengen-image">
                <img src="cv.jpg" alt="Visa Schengen" class="floating">
            </div>
        </div>
    </div>
</section>

<!-- CTA Section -->
<section class="cta-section">
    <div class="container">
        <div class="cta-content">
            <h2>Prêt à commencer votre aventure à l'étranger?</h2>
            <p>Notre équipe d'experts est à votre disposition pour vous guider à travers chaque étape du processus d'obtention de visa.</p>
            <a href="https://wa.me/+237687051214" class="btn">
                <i class="fas fa-paper-plane"></i> Contactez-nous maintenant
            </a>
        </div>
    </div>
</section>

<!-- Footer -->
<footer class="footer">
    <div class="container">
        <div class="footer-grid">
            <div class="footer-col">
                <h4>Global Visa LTD</h4>
                <p>Votre partenaire de confiance pour tous vos projets d'immigration à travers le monde.</p>
                <div class="footer-logo">
                    <i class="fas fa-passport"></i> Global Visa LTD
                </div>
            </div>
            
            <div class="footer-col">
                <h4>Liens rapides</h4>
                <ul>
                    <li><a href="${pageContext.request.contextPath}/">Accueil</a></li>
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
                    <li><a href="billetrie.jsp">Billeterie Aerienne</a></li>
                    <li><a href="langue.jsp">Cours de langue</a></li>
                    <li><a href="integration.jsp">Aide à l'intégration</a></li>
                    
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
        hamburger.classList.toggle('active');
    });
    
    // Sticky Header
    window.addEventListener('scroll', () => {
        const header = document.querySelector('.header');
        header.classList.toggle('scrolled', window.scrollY > 50);
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
                
                // Fermer le menu mobile si ouvert
                if (navLinks.classList.contains('active')) {
                    navLinks.classList.remove('active');
                    hamburger.classList.remove('active');
                }
            }
        });
    });

    // Animation au défilement
    const animateOnScroll = () => {
        const elements = document.querySelectorAll('.animate__animated');
        
        elements.forEach(element => {
            const elementPosition = element.getBoundingClientRect().top;
            const windowHeight = window.innerHeight;
            
            if (elementPosition < windowHeight - 100) {
                const animationClass = element.dataset.animation;
                if (animationClass) {
                    element.classList.add(animationClass);
                }
            }
        });
    };

    // Initialisation des animations
    window.addEventListener('load', animateOnScroll);
    window.addEventListener('scroll', animateOnScroll);

    // Gestion des menus déroulants
    const dropdowns = document.querySelectorAll('.dropdown');
    dropdowns.forEach(dropdown => {
        const toggle = dropdown.querySelector('.dropdown-toggle');
        const content = dropdown.querySelector('.dropdown-content');
        
        toggle.addEventListener('click', (e) => {
            e.preventDefault();
            content.classList.toggle('show');
            const icon = toggle.querySelector('.dropdown-icon');
            icon.classList.toggle('fa-chevron-up');
            icon.classList.toggle('fa-chevron-down');
        });
    });

    // Fermer les menus déroulants quand on clique ailleurs
    document.addEventListener('click', (e) => {
        if (!e.target.closest('.dropdown')) {
            document.querySelectorAll('.dropdown-content').forEach(content => {
                content.classList.remove('show');
            });
            document.querySelectorAll('.dropdown-icon').forEach(icon => {
                icon.classList.add('fa-chevron-down');
                icon.classList.remove('fa-chevron-up');
            });
        }
    });

    // Formulaire de newsletter
    const newsletterForm = document.querySelector('.newsletter-form');
    if (newsletterForm) {
        newsletterForm.addEventListener('submit', (e) => {
            e.preventDefault();
            const emailInput = newsletterForm.querySelector('input[type="email"]');
            const email = emailInput.value.trim();
            
            if (email && validateEmail(email)) {
                // Ici vous pourriez ajouter une requête AJAX pour envoyer l'email
                alert('Merci pour votre inscription à notre newsletter !');
                emailInput.value = '';
            } else {
                alert('Veuillez entrer une adresse email valide.');
            }
        });
    }

    // Fonction de validation d'email
    function validateEmail(email) {
        const re = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        return re.test(email);
    }

    // Chargement dynamique des images (lazy loading)
    if ('IntersectionObserver' in window) {
        const lazyImages = document.querySelectorAll('img[data-src]');
        
        const imageObserver = new IntersectionObserver((entries, observer) => {
            entries.forEach(entry => {
                if (entry.isIntersecting) {
                    const img = entry.target;
                    img.src = img.dataset.src;
                    img.removeAttribute('data-src');
                    observer.unobserve(img);
                }
            });
        });
        
        lazyImages.forEach(img => {
            imageObserver.observe(img);
        });
    } 
    </script>