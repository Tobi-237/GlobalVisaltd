<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Global Visa LTD - Aide à l'intégration</title>
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
            --transition: all 0.4s cubic-bezier(0.25, 0.8, 0.25, 1);
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: var(--font-main);
            color: var(--text-color);
            line-height: 1.7;
            background-color: var(--light-color);
            padding-top: 90px;
            overflow-x: hidden;
        }

        .container {
            width: 100%;
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 20px;
        }

      /* Header Styles (identique à accueil.jsp) */
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

/* Dropdown Menu Styles */
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
    .hamburger {
        display: none;
        cursor: pointer;
        font-size: 1.5rem;
        color: var(--dark);
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
        /* Hero Section */
        .integration-hero {
            height: 70vh;
            background: linear-gradient(rgba(139, 69, 19, 0.8), rgba(139, 69, 19, 0.8)), 
                        url('integration-hero.jpg') center/cover no-repeat;
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
            color: var(--light-color);
            position: relative;
            overflow: hidden;
        }

        .hero-content {
            max-width: 800px;
            padding: 0 20px;
            animation: fadeInUp 1s ease-out;
        }

        @keyframes fadeInUp {
            from {
                opacity: 0;
                transform: translateY(40px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        .hero-content h1 {
            font-family: var(--font-heading);
            font-size: 3.5rem;
            margin-bottom: 20px;
            line-height: 1.2;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.3);
        }

        .hero-content p {
            font-size: 1.2rem;
            margin-bottom: 30px;
            opacity: 0.9;
        }

        /* Section Styles */
        section {
            padding: 100px 0;
            position: relative;
        }

        h2 {
            font-family: var(--font-heading);
            font-size: 2.8rem;
            color: var(--secondary-color);
            text-align: center;
            margin-bottom: 20px;
            position: relative;
        }

        h2::after {
            content: '';
            display: block;
            width: 80px;
            height: 4px;
            background: linear-gradient(90deg, var(--primary-color), var(--secondary-color));
            margin: 20px auto;
            border-radius: 2px;
        }

        .subtitle {
            text-align: center;
            font-size: 1.2rem;
            color: var(--text-color);
            max-width: 700px;
            margin: 0 auto 50px;
        }

        /* Integration Services */
        .services-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 30px;
            margin-top: 50px;
        }

        .service-card {
            background: var(--light-color);
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 15px 30px rgba(0, 0, 0, 0.08);
            transition: var(--transition);
            position: relative;
            z-index: 1;
        }

        .service-card::before {
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

        .service-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 20px 40px rgba(0, 0, 0, 0.12);
        }

        .service-card:hover::before {
            opacity: 1;
        }

        .service-icon {
            height: 200px;
            display: flex;
            align-items: center;
            justify-content: center;
            background-color: rgba(230, 126, 34, 0.1);
            position: relative;
            overflow: hidden;
        }

        .service-icon i {
            font-size: 5rem;
            color: var(--primary-color);
            transition: var(--transition);
            z-index: 1;
        }

        .service-card:hover .service-icon i {
            color: var(--light-color);
            transform: scale(1.1);
        }

        .service-icon::after {
            content: '';
            position: absolute;
            width: 200px;
            height: 200px;
            background-color: rgba(255, 255, 255, 0.15);
            border-radius: 50%;
            transform: scale(0);
            transition: var(--transition);
        }

        .service-card:hover .service-icon::after {
            transform: scale(1);
        }

        .service-content {
            padding: 30px;
            text-align: center;
        }

        .service-content h3 {
            font-size: 1.5rem;
            color: var(--secondary-color);
            margin-bottom: 15px;
            transition: var(--transition);
        }

        .service-card:hover .service-content h3 {
            color: var(--light-color);
        }

        .service-content p {
            margin-bottom: 20px;
            transition: var(--transition);
        }

        .service-card:hover .service-content p {
            color: rgba(255, 255, 255, 0.9);
        }

        /* Process Section */
        .process-steps {
            position: relative;
            padding-top: 80px;
        }

        .process-steps::before {
            content: '';
            position: absolute;
            top: 0;
            left: 50%;
            transform: translateX(-50%);
            width: 4px;
            height: 100%;
            background-color: rgba(230, 126, 34, 0.2);
            z-index: 0;
        }

        .step {
            display: flex;
            margin-bottom: 60px;
            position: relative;
            z-index: 1;
        }

        .step:nth-child(odd) {
            justify-content: flex-start;
        }

        .step:nth-child(even) {
            justify-content: flex-end;
        }

        .step-content {
            width: calc(50% - 60px);
            background: var(--light-color);
            border-radius: 10px;
            padding: 30px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.08);
            position: relative;
            transition: var(--transition);
        }

        .step-content:hover {
            transform: translateY(-5px);
            box-shadow: 0 15px 35px rgba(0, 0, 0, 0.12);
        }

        .step-number {
            position: absolute;
            top: -30px;
            left: 50%;
            transform: translateX(-50%);
            width: 60px;
            height: 60px;
            background: linear-gradient(135deg, var(--primary-color), var(--secondary-color));
            color: var(--light-color);
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 1.5rem;
            font-weight: 700;
            box-shadow: 0 5px 15px rgba(230, 126, 34, 0.4);
        }

        .step:nth-child(even) .step-content {
            text-align: right;
        }

        .step-content h3 {
            font-size: 1.4rem;
            color: var(--secondary-color);
            margin-bottom: 15px;
        }

        /* Testimonials */
        .testimonial-section {
            background: linear-gradient(rgba(139, 69, 19, 0.9), rgba(139, 69, 19, 0.9)), 
                        url('world-map.jpg') center/cover no-repeat fixed;
            color: var(--light-color);
            position: relative;
            overflow: hidden;
        }

        .testimonial-section h2 {
            color: var(--light-color);
        }

        .testimonial-section h2::after {
            background-color: var(--primary-color);
        }

        .testimonial-slider {
            max-width: 800px;
            margin: 0 auto;
            position: relative;
        }

        .testimonial-card {
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(10px);
            -webkit-backdrop-filter: blur(10px);
            border-radius: 15px;
            padding: 40px;
            margin: 20px;
            text-align: center;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
            opacity: 0;
            transform: translateY(20px);
            transition: all 0.6s ease;
            position: absolute;
            width: 100%;
            top: 0;
            left: 0;
        }

        .testimonial-card.active {
            opacity: 1;
            transform: translateY(0);
            position: relative;
        }

        .testimonial-card .quote {
            font-size: 1.2rem;
            font-style: italic;
            margin-bottom: 30px;
            position: relative;
        }

        .testimonial-card .quote::before,
        .testimonial-card .quote::after {
            content: '"';
            font-family: var(--font-heading);
            font-size: 4rem;
            color: rgba(255, 255, 255, 0.2);
            position: absolute;
            line-height: 1;
        }

        .testimonial-card .quote::before {
            top: -20px;
            left: -10px;
        }

        .testimonial-card .quote::after {
            bottom: -50px;
            right: -10px;
        }

        .author {
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .author img {
            width: 70px;
            height: 70px;
            border-radius: 50%;
            object-fit: cover;
            margin-right: 20px;
            border: 3px solid var(--primary-color);
        }

        .author-info h4 {
            font-size: 1.3rem;
            margin-bottom: 5px;
        }

        .author-info span {
            font-size: 0.9rem;
            opacity: 0.8;
        }

        .slider-dots {
            display: flex;
            justify-content: center;
            margin-top: 40px;
        }

        .dot {
            width: 12px;
            height: 12px;
            border-radius: 50%;
            background-color: rgba(255, 255, 255, 0.5);
            margin: 0 8px;
            cursor: pointer;
            transition: var(--transition);
        }

        .dot.active {
            background-color: var(--primary-color);
            transform: scale(1.3);
        }

        /* CTA Section */
        .cta-section {
            background: linear-gradient(135deg, var(--primary-color) 0%, var(--secondary-color) 100%);
            color: var(--light-color);
            text-align: center;
            padding: 80px 0;
        }

        .cta-content {
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
            opacity: 0.9;
        }

        /* Button Styles */
        .btn {
            display: inline-block;
            background-color: var(--light-color);
            color: var(--primary-color);
            padding: 15px 40px;
            border-radius: 50px;
            text-decoration: none;
            font-weight: 600;
            transition: var(--transition);
            border: 2px solid var(--light-color);
            font-size: 1.1rem;
            cursor: pointer;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
        }

        .btn:hover {
            background-color: transparent;
            color: var(--light-color);
            transform: translateY(-5px);
            box-shadow: 0 15px 30px rgba(0, 0, 0, 0.2);
        }

        .btn-outline {
            background-color: transparent;
            color: var(--light-color);
            border: 2px solid var(--light-color);
        }

        .btn-outline:hover {
            background-color: var(--light-color);
            color: var(--primary-color);
        }

        /* Responsive Styles */
        @media (max-width: 992px) {
            h2 {
                font-size: 2.5rem;
            }
            
            .hero-content h1 {
                font-size: 3rem;
            }
            
            section {
                padding: 80px 0;
            }
            
            .step-content {
                width: calc(50% - 40px);
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
            
            .hero-content h1 {
                font-size: 2.5rem;
            }
            
            h2 {
                font-size: 2.2rem;
            }
            
            .step {
                justify-content: flex-start !important;
                margin-bottom: 80px;
            }
            
            .step-content {
                width: 100%;
                text-align: left !important;
            }
            
            .step-number {
                left: 30px;
                transform: none;
            }
            
            .process-steps::before {
                left: 30px;
            }
        }

        @media (max-width: 576px) {
            .hero-content h1 {
                font-size: 2rem;
            }
            
            h2 {
                font-size: 2rem;
            }
            
            .btn {
                padding: 12px 30px;
            }
            
            .service-icon {
                height: 150px;
            }
            
            .service-icon i {
                font-size: 4rem;
            }
            
            .testimonial-card {
                padding: 30px 20px;
            }
            
            .author {
                flex-direction: column;
                text-align: center;
            }
            
            .author img {
                margin-right: 0;
                margin-bottom: 15px;
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
<section class="integration-hero">
    <div class="hero-content">
        <h1>Aide à l'intégration à l'étranger</h1>
        <p>Nous vous accompagnons pas à pas dans votre nouvelle vie pour une intégration réussie</p>
        <a href="${pageContext.request.contextPath}/contact" class="btn btn-outline">Contactez nos experts</a>
    </div>
</section>

<!-- Services Section -->
<section class="container">
    <h2>Nos services d'intégration</h2>
    <p class="subtitle">Nous couvrons tous les aspects essentiels pour votre installation et adaptation dans votre nouveau pays</p>
    
    <div class="services-grid">
        <div class="service-card">
            <div class="service-icon">
                <i class="fas fa-home"></i>
            </div>
            <div class="service-content">
                <h3>Logement</h3>
                <p>Aide à la recherche et location d'un logement adapté à vos besoins et budget</p>
                <a href="#" class="btn">En savoir plus</a>
            </div>
        </div>
        
        <div class="service-card">
            <div class="service-icon">
                <i class="fas fa-briefcase"></i>
            </div>
            <div class="service-content">
                <h3>Emploi</h3>
                <p>Accompagnement dans la recherche d'emploi et préparation aux entretiens</p>
                <a href="#" class="btn">En savoir plus</a>
            </div>
        </div>
        
        <div class="service-card">
            <div class="service-icon">
                <i class="fas fa-university"></i>
            </div>
            <div class="service-content">
                <h3>Administration</h3>
                <p>Aide aux démarches administratives (carte de séjour, sécurité sociale, etc.)</p>
                <a href="#" class="btn">En savoir plus</a>
            </div>
        </div>
        
        <div class="service-card">
            <div class="service-icon">
                <i class="fas fa-school"></i>
            </div>
            <div class="service-content">
                <h3>Scolarité</h3>
                <p>Inscription des enfants dans les écoles et accompagnement pédagogique</p>
                <a href="#" class="btn">En savoir plus</a>
            </div>
        </div>
        
        <div class="service-card">
            <div class="service-icon">
                <i class="fas fa-heartbeat"></i>
            </div>
            <div class="service-content">
                <h3>Santé</h3>
                <p>Accès au système de santé et recherche de professionnels francophones</p>
                <a href="#" class="btn">En savoir plus</a>
            </div>
        </div>
        
        <div class="service-card">
            <div class="service-icon">
                <i class="fas fa-users"></i>
            </div>
            <div class="service-content">
                <h3>Réseau social</h3>
                <p>Intégration dans la communauté locale et rencontres avec d'autres expatriés</p>
                <a href="#" class="btn">En savoir plus</a>
            </div>
        </div>
    </div>
</section>

<!-- Process Section -->
<section class="container">
    <h2>Notre processus d'accompagnement</h2>
    <p class="subtitle">Un suivi personnalisé à chaque étape de votre intégration</p>
    
    <div class="process-steps">
        <div class="step">
            <div class="step-content">
                <div class="step-number">1</div>
                <h3>Évaluation initiale</h3>
                <p>Analyse de vos besoins spécifiques et élaboration d'un plan d'intégration personnalisé</p>
            </div>
        </div>
        
        <div class="step">
            <div class="step-content">
                <div class="step-number">2</div>
                <h3>Pré-départ</h3>
                <p>Préparation avant votre départ : checklist, documents nécessaires, premières démarches à distance</p>
            </div>
        </div>
        
        <div class="step">
            <div class="step-content">
                <div class="step-number">3</div>
                <h3>Accueil sur place</h3>
                <p>Accueil à l'aéroport, installation temporaire et visite d'orientation dans votre nouvelle ville</p>
            </div>
        </div>
        
        <div class="step">
            <div class="step-content">
                <div class="step-number">4</div>
                <h3>Installation</h3>
                <p>Recherche de logement permanent, ouverture de compte bancaire, souscription aux services essentiels</p>
            </div>
        </div>
        
        <div class="step">
            <div class="step-content">
                <div class="step-number">5</div>
                <h3>Intégration professionnelle</h3>
                <p>Aide à la recherche d'emploi, validation des diplômes, préparation aux entretiens</p>
            </div>
        </div>
        
        <div class="step">
            <div class="step-content">
                <div class="step-number">6</div>
                <h3>Suivi à long terme</h3>
                <p>Assistance continue pendant vos premiers mois pour résoudre les éventuelles difficultés</p>
            </div>
        </div>
    </div>
</section>

<!-- Testimonials Section -->
<section class="testimonial-section">
    <div class="container">
        <h2>Ils ont réussi leur intégration</h2>
        <p class="subtitle">Découvrez les témoignages de ceux qui ont vécu cette expérience avec nous</p>
        
        <div class="testimonial-slider">
            <div class="testimonial-card active">
                <p class="quote">Global Visa LTD m'a accompagné dans mon installation au Canada. Grâce à leur aide, j'ai trouvé un logement en une semaine et un emploi dans mon domaine en moins d'un mois. Leur réseau de contacts sur place a fait toute la différence.</p>
                <div class="author">
                    <img src="chic.jpg" alt="Jean Koffi">
                    <div class="author-info">
                        <h4>Jean Koffi</h4>
                        <span>Montréal, Canada - Depuis 2023</span>
                    </div>
                </div>
            </div>
            
            <div class="testimonial-card">
                <p class="quote">L'équipe m'a guidé dans toutes les démarches administratives en France. Ils m'ont même trouvé un médecin francophone et m'ont aidé à inscrire mes enfants à l'école. Un accompagnement complet qui m'a évité bien des stress.</p>
                <div class="author">
                    <img src="fouda.jpg" alt="Amina Traoré">
                    <div class="author-info">
                        <h4>Amina Traoré</h4>
                        <span>Lyon, France - Depuis 2024</span>
                    </div>
                </div>
            </div>
            
            <div class="testimonial-card">
                <p class="quote">Ce qui m'a le plus impressionné, c'est l'aide pour valider mes diplômes et trouver un emploi aux États-Unis. Ils m'ont préparé aux entretiens et m'ont mis en relation avec des employeurs. Aujourd'hui, je travaille dans une grande entreprise à New York.</p>
                <div class="author">
                    <img src="Capture d’écran 2025-05-20 074210.jpg" alt="Paul Ndiaye">
                    <div class="author-info">
                        <h4>Paul Ndiaye</h4>
                        <span>New York, USA - Depuis 2022</span>
                    </div>
                </div>
            </div>
            
            <div class="slider-dots">
                <span class="dot active"></span>
                <span class="dot"></span>
                <span class="dot"></span>
            </div>
        </div>
    </div>
</section>

<!-- CTA Section -->
<section class="cta-section">
    <div class="cta-content">
        <h2>Prêt pour votre nouvelle vie à l'étranger ?</h2>
        <p>Notre équipe d'experts est à votre disposition pour vous accompagner dans toutes les étapes de votre intégration. Contactez-nous dès aujourd'hui pour un bilan personnalisé.</p>
        <div style="display: flex; gap: 20px; justify-content: center;">
            <a href="${pageContext.request.contextPath}/contact" class="btn">Demander un accompagnement</a>
            <a href="tel:+237697177636" class="btn btn-outline"><i class="fas fa-phone"></i> Nous appeler</a>
        </div>
    </div>
</section>

<!-- Footer -->
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
                    
                    <li><i class="fas fa-phone-alt"></i>(+237) 6 20 27 96 30</li>
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
    
    // Header Scroll Effect
    window.addEventListener('scroll', () => {
        const header = document.querySelector('.header');
        header.classList.toggle('scrolled', window.scrollY > 50);
    });
    
    // Testimonial Slider
    const testimonials = document.querySelectorAll('.testimonial-card');
    const dots = document.querySelectorAll('.dot');
    let currentTestimonial = 0;
    
    function showTestimonial(n) {
        testimonials.forEach(testimonial => {
            testimonial.classList.remove('active');
            testimonial.style.opacity = '0';
            testimonial.style.transform = 'translateY(20px)';
        });
        
        dots.forEach(dot => dot.classList.remove('active'));
        
        currentTestimonial = (n + testimonials.length) % testimonials.length;
        
        setTimeout(() => {
            testimonials[currentTestimonial].classList.add('active');
            testimonials[currentTestimonial].style.opacity = '1';
            testimonials[currentTestimonial].style.transform = 'translateY(0)';
            dots[currentTestimonial].classList.add('active');
        }, 300);
    }
    
    dots.forEach((dot, index) => {
        dot.addEventListener('click', () => showTestimonial(index));
    });
    
    // Auto testimonial change every 7 seconds
    setInterval(() => showTestimonial(currentTestimonial + 1), 7000);
    
    // Animation on scroll
    const animateOnScroll = () => {
        const elements = document.querySelectorAll('.service-card, .step-content');
        
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
    document.querySelectorAll('.service-card, .step-content').forEach(element => {
        element.style.opacity = '0';
        element.style.transform = 'translateY(30px)';
        element.style.transition = 'opacity 0.6s ease, transform 0.6s ease';
    });
    
    window.addEventListener('load', animateOnScroll);
    window.addEventListener('scroll', animateOnScroll);
</script>

</body>
</html>