<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Global Visa LTD - Votre partenaire en immigration</title>
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

        /* Hero Slider */
        .hero-slider {
            height: 100vh;
            position: relative;
            overflow: hidden;
        }

        .slide {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-size: cover;
            background-position: center;
            opacity: 0;
            transition: opacity 1s ease-in-out;
        }

        .slide.active {
            opacity: 1;
        }

        .slide-content {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            text-align: center;
            color: var(--light-color);
            width: 80%;
            max-width: 800px;
            background-color: rgba(139, 69, 19, 0.8);
            padding: 40px;
            border-radius: 10px;
            animation: fadeInUp 1s ease;
        }

        @keyframes fadeInUp {
            from {
                opacity: 0;
                transform: translate(-50%, -40%);
            }
            to {
                opacity: 1;
                transform: translate(-50%, -50%);
            }
        }

        .slide-content h1 {
            font-family: var(--font-heading);
            font-size: 2.5rem;
            margin-bottom: 20px;
            font-weight: 700;
            line-height: 1.3;
        }

        .slide-content p {
            font-size: 1.1rem;
            margin-bottom: 30px;
        }

        /* Buttons */
        .btn {
            display: inline-block;
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
        }

        .btn:hover {
            background-color: transparent;
            color: var(--light-color);
            transform: translateY(-3px);
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
        }

        /* Slider Navigation */
        .slider-nav {
            position: absolute;
            bottom: 50px;
            left: 50%;
            transform: translateX(-50%);
            display: flex;
        }

        .slider-nav button {
            background-color: rgba(255, 255, 255, 0.3);
            border: none;
            color: var(--light-color);
            width: 50px;
            height: 50px;
            border-radius: 50%;
            margin: 0 10px;
            cursor: pointer;
            transition: var(--transition);
            font-size: 18px;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .slider-nav button:hover {
            background-color: var(--primary-color);
            transform: scale(1.1);
        }

        /* Section Styles */
        section {
            padding: 100px 0;
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

        /* Why Choose Us Section */
        .why-us {
            background-color: var(--gray-color);
        }

        .features-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 30px;
        }

        .feature {
            background-color: var(--light-color);
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.05);
            text-align: center;
            position: relative;
            transition: var(--transition);
            overflow: hidden;
        }

        .feature:hover {
            transform: translateY(-10px);
            box-shadow: 0 15px 30px rgba(0, 0, 0, 0.1);
        }

        .feature-number {
            font-size: 3rem;
            font-weight: 700;
            color: rgba(139, 69, 19, 0.1);
            position: absolute;
            top: 10px;
            right: 20px;
            line-height: 1;
        }

        .feature h3 {
            font-size: 1.3rem;
            color: var(--secondary-color);
            margin: 20px 0 15px;
        }

        .feature i {
            font-size: 2.5rem;
            color: var(--primary-color);
            margin-top: 20px;
        }

        /* Services Section */
        .our-services {
            background-color: var(--light-color);
        }

        .services-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 30px;
        }

        .service {
            background-color: var(--gray-color);
            padding: 30px;
            border-radius: 10px;
            text-align: center;
            transition: var(--transition);
            position: relative;
            overflow: hidden;
            z-index: 1;
        }

        .service::before {
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

        .service:hover {
            color: var(--light-color);
        }

        .service:hover::before {
            opacity: 1;
        }

        .service:hover h3, .service:hover i {
            color: var(--light-color);
        }

        .service i {
            font-size: 3rem;
            color: var(--primary-color);
            margin-bottom: 20px;
            transition: var(--transition);
        }

        .service h3 {
            font-size: 1.3rem;
            color: var(--secondary-color);
            margin-bottom: 15px;
            transition: var(--transition);
        }

        /* Testimonials Section */
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
            animation: fadeIn 1s ease;
        }

        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        }

        .testimonial-content {
            background-color: rgba(255, 255, 255, 0.1);
            padding: 40px;
            border-radius: 10px;
            margin-bottom: 30px;
            position: relative;
        }

        .testimonial-content::before {
            content: '"';
            font-family: var(--font-heading);
            font-size: 5rem;
            color: rgba(255, 255, 255, 0.1);
            position: absolute;
            top: 20px;
            left: 20px;
            line-height: 1;
        }

        .testimonial-content p {
            font-size: 1.1rem;
            font-style: italic;
            margin-bottom: 30px;
            position: relative;
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
            border: 3px solid var(--primary-color);
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
            transition: var(--transition);
        }

        .dot.active {
            background-color: var(--primary-color);
            transform: scale(1.2);
        }

        /* News Section */
        .latest-news {
            background-color: var(--gray-color);
        }

        .news-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 30px;
        }

        .news-card {
            background-color: var(--light-color);
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.05);
            transition: var(--transition);
        }

        .news-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 15px 30px rgba(0, 0, 0, 0.1);
        }

        .news-image {
            height: 200px;
            background-size: cover;
            background-position: center;
            transition: transform 0.5s ease;
        }

        .news-card:hover .news-image {
            transform: scale(1.05);
        }

        .news-content {
            padding: 20px;
        }

        .date {
            display: inline-block;
            background-color: var(--primary-color);
            color: var(--light-color);
            padding: 5px 10px;
            border-radius: 5px;
            font-size: 0.8rem;
            margin-bottom: 15px;
        }

        .news-content h3 {
            font-size: 1.2rem;
            color: var(--secondary-color);
            margin-bottom: 10px;
            transition: var(--transition);
        }

        .news-card:hover .news-content h3 {
            color: var(--primary-color);
        }

        .read-more {
            display: inline-flex;
            align-items: center;
            color: var(--primary-color);
            text-decoration: none;
            font-weight: 600;
            margin-top: 15px;
            transition: var(--transition);
        }

        .read-more i {
            margin-left: 5px;
            transition: var(--transition);
        }

        .read-more:hover {
            color: var(--secondary-color);
        }

        .read-more:hover i {
            transform: translateX(5px);
        }

        /* FAQ Section */
        .faq {
            background-color: var(--light-color);
        }

        .faq-item {
            margin-bottom: 15px;
            border: 1px solid #eee;
            border-radius: 5px;
            overflow: hidden;
            transition: var(--transition);
        }

        .faq-item:hover {
            border-color: var(--primary-color);
        }

        .faq-question {
            width: 100%;
            padding: 20px;
            background-color: var(--gray-color);
            border: none;
            text-align: left;
            font-size: 1.1rem;
            font-weight: 600;
            color: var(--secondary-color);
            cursor: pointer;
            display: flex;
            justify-content: space-between;
            align-items: center;
            transition: var(--transition);
        }

        .faq-question:hover {
            background-color: rgba(230, 126, 34, 0.1);
        }

        .faq-question i {
            transition: var(--transition);
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

        /* Contact Section */
        .contact {
            background-color: var(--secondary-color);
            color: var(--light-color);
            position: relative;
            overflow: hidden;
        }

        .contact .container {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 50px;
        }

        .contact-info h3, .contact-form h3 {
            font-family: var(--font-heading);
            font-size: 1.8rem;
            margin-bottom: 30px;
            color: var(--light-color);
        }

        .contact-info ul {
            list-style: none;
        }

        .contact-info li {
            margin-bottom: 15px;
            display: flex;
            align-items: center;
        }

        .contact-info i {
            margin-right: 15px;
            color: var(--primary-color);
            font-size: 1.2rem;
            width: 20px;
            text-align: center;
        }

        .social-links {
            margin-top: 30px;
            display: flex;
            gap: 10px;
        }

        .social-links a {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            width: 40px;
            height: 40px;
            background-color: rgba(255, 255, 255, 0.1);
            color: var(--light-color);
            border-radius: 50%;
            transition: var(--transition);
            text-decoration: none;
        }

        .social-links a:hover {
            background-color: var(--primary-color);
            transform: translateY(-5px);
        }

        /* Form Styles */
        .form-group {
            margin-bottom: 20px;
        }

        .form-group input,
        .form-group select,
        .form-group textarea {
            width: 100%;
            padding: 15px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-family: var(--font-main);
            font-size: 1rem;
            background-color: rgba(255, 255, 255, 0.9);
            transition: var(--transition);
        }

        .form-group input:focus,
        .form-group select:focus,
        .form-group textarea:focus {
            outline: none;
            border-color: var(--primary-color);
            box-shadow: 0 0 0 3px rgba(230, 126, 34, 0.2);
        }

        .form-group textarea {
            height: 150px;
            resize: vertical;
        }

        /* Partners Section */
        .partners-section {
            padding: 60px 0;
            background-color: var(--dark-color);
            color: var(--light-color);
        }

        .partners-section h4 {
            text-align: center;
            font-family: var(--font-heading);
            font-size: 1.8rem;
            color: var(--light-color);
            margin-bottom: 30px;
            position: relative;
        }

        .partners-section h4::after {
            content: '';
            display: block;
            width: 80px;
            height: 3px;
            background-color: var(--primary-color);
            margin: 20px auto;
        }

        .partners-grid {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 30px;
        }

        .partner {
            height: 80px;
            display: flex;
            align-items: center;
            justify-content: center;
            filter: grayscale(100%);
            opacity: 0.7;
            transition: var(--transition);
            padding: 15px;
            background: rgba(255, 255, 255, 0.1);
            border-radius: 10px;
        }

        .partner:hover {
            filter: grayscale(0%);
            opacity: 1;
            background: rgba(255, 255, 255, 0.2);
        }

        .partner img {
            max-height: 50px;
            width: auto;
            display: block;
            margin: 0 auto;
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
            .slide-content h1 {
                font-size: 2rem;
            }
            
            .slide-content p {
                font-size: 1rem;
            }
            
            section {
                padding: 80px 0;
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
            
            .hero-slider {
                height: 80vh;
            }
            
            .slide-content {
                width: 90%;
                padding: 30px;
            }
            
            .slide-content h1 {
                font-size: 1.8rem;
            }
            
            h2 {
                font-size: 2rem;
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

<!-- Hero Slider -->
<section class="hero-slider">
    <div class="slider-container">
        <div class="slide active" style="background-image: url('photo_2025-05-19_17-54-49.jpg');">
            <div class="slide-content">
                <h1>Global Visa LTD - Plus qu'une agence, votre allié pour réussir votre projet d'immigration</h1>
                <p>En choisissant notre agence d'immigration, vous vous assurez d'être bien accompagné et d'avoir toutes les chances de réussir votre projet.</p>
                <a href="${pageContext.request.contextPath}/contact" class="btn">Contactez-nous</a>
            </div>
        </div>
        <div class="slide" style="background-image: url('photo_2025-05-20_07-25-32.jpg');">
            <div class="slide-content">
                <h1>Réalisez votre rêve d'immigration</h1>
                <p>Nous travaillons main dans la main avec chaque client pour concevoir un projet d'immigration qui répond à ses aspirations.</p>
                <a href="${pageContext.request.contextPath}/services" class="btn">Nos services</a>
            </div>
        </div>
        <div class="slide" style="background-image: url('photo_2025-05-20_01-13-56.jpg');">
            <div class="slide-content">
                <h1>Une expertise juridique reconnue</h1>
                <p>Nous travaillons dans le respect strict des règles d'immigration de chaque pays.</p>
                <a href="${pageContext.request.contextPath}/programs" class="btn">Nos programmes</a>
            </div>
        </div>
          <div class="slide" style="background-image: url('fouda.jpg');">
            <div class="slide-content">
                <h1>Voyagez l'esprit tranquille</h1>
                <p>nous nous occupons du reste.</p>
                <a href="billetrie.jsp" class="btn">Billetterie</a>
            </div>
        </div>
        <div class="slider-nav">
            <button class="prev"><i class="fas fa-chevron-left"></i></button>
            <button class="next"><i class="fas fa-chevron-right"></i></button>
        </div>
    </div>
</section>

<!-- Why Choose Us -->
<section class="why-us">
    <div class="container">
        <h2>Pourquoi choisir Global Visa LTD?</h2>
        <p class="subtitle">Nous pouvons vous aider à réussir votre projet d'immigration. Découvrez nos avantages</p>
        
        <div class="features-grid">
            <div class="feature">
                <div class="feature-number">01</div>
                <h3>Accompagnement personnalisé</h3>
                <p>Notre objectif est d'évaluer votre profil afin de vous donner la meilleure orientation.</p>
                <i class="fas fa-user-tie"></i>
            </div>
            
            <div class="feature">
                <div class="feature-number">02</div>
                <h3>Démarche de visa simplifiée</h3>
                <p>Une équipe jeune et dynamique à votre disposition pour faciliter vos démarches.</p>
                <i class="fas fa-file-alt"></i>
            </div>
            
            <div class="feature">
                <div class="feature-number">03</div>
                <h3>Expertise juridique</h3>
                <p>Nous veillons au strict respect des règles d'immigration de chaque pays.</p>
                <i class="fas fa-balance-scale"></i>
            </div>
            
            <div class="feature">
                <div class="feature-number">04</div>
                <h3>Service après-vente</h3>
                <p>Nous ne nous limitons pas à l'obtention du visa mais accompagnons votre intégration.</p>
                <i class="fas fa-headset"></i>
            </div>
        </div>
    </div>
</section>

<!-- Our Services -->
<section class="our-services">
    <div class="container">
        <h2>Nos services d'immigration</h2>
        <p class="subtitle">Découvrez une large gamme de services adaptés à vos besoins</p>
        
        <div class="services-grid">
            <div class="service">
                <i class="fas fa-user-graduate"></i>
                <h3>Étude et évaluation de profil</h3>
                <p>Analyse approfondie de votre situation pour déterminer vos options d'immigration.</p>
            </div>
            
            <div class="service">
                <i class="fas fa-plane"></i>
                <h3>Demandes de visa</h3>
                <p>Prise en charge complète de votre dossier de demande de visa.</p>
            </div>
            
            <div class="service">
                <i class="fas fa-ticket-alt"></i>
                <h3>Billeterie Aérienne</h3>
                <p>Prenez votre envol vers une carrière internationale avec nos services de billetterie.</p>
            </div>
            
            <div class="service">
                <i class="fas fa-language"></i>
                <h3>Préparation aux examens de langue</h3>
                <p>Cours intensifs pour réussir les tests linguistiques requis.</p>
            </div>
            
            <div class="service">
                <i class="fas fa-hands-helping"></i>
                <h3>Aide à l'intégration</h3>
                <p>Conseils et accompagnement pour votre nouvelle vie à l'étranger.</p>
            </div>
            
            <div class="service">
                <i class="fas fa-briefcase"></i>
                <h3>Recherche d'emploi</h3>
                <p>Aide à la rédaction de CV et préparation aux entretiens d'embauche.</p>
            </div>
        </div>
    </div>
</section>

<!-- Testimonials -->
<section class="testimonials">
    <div class="container">
        <h2>Témoignages</h2>
        <p class="subtitle">Ce que nos clients disent de nous</p>
        
        <div class="testimonial-slider">
            <div class="testimonial active">
                <div class="testimonial-content">
                    <p>Global Visa LTD m'a accompagné dans mon projet d'immigration au Canada. Leur professionnalisme et leur expertise ont fait toute la différence. Mon visa a été accepté du premier coup!</p>
                </div>
                <div class="author">
                    <img src="Capture d’écran 2025-05-20 074210.jpg" alt="Client satisfait">
                    <div>
                        <h4>Jean Koffi</h4>
                        <span>Immigrant au Canada</span>
                    </div>
                </div>
            </div>
            
            <div class="testimonial">
                <div class="testimonial-content">
                    <p>Grâce à l'équipe de Global Visa LTD, j'ai pu obtenir mon visa étudiant pour la France en un temps record. Ils ont été disponibles et réactifs à toutes mes questions.</p>
                </div>
                <div class="author">
                    <img src="Capture d’écran 2025-05-20 074515.jpg" alt="Client satisfait">
                    <div>
                        <h4>Amina Traoré</h4>
                        <span>Étudiante en France</span>
                    </div>
                </div>
            </div>
            
            <div class="testimonial">
                <div class="testimonial-content">
                    <p>L'accompagnement pour mon visa de travail aux USA a été impeccable. Global Visa LTD a su gérer toutes les complexités administratives pour moi.</p>
                </div>
                <div class="author">
                    <img src="Capture d’écran 2025-05-20 074420.jpg" alt="Client satisfait">
                    <div>
                        <h4>Amina Diallo</h4>
                        <span>Travailleur aux USA</span>
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

<!-- Latest News -->
<section class="latest-news">
    <div class="container">
        <h2>Actualités sur l'immigration</h2>
        <p class="subtitle">Restez informé des dernières nouvelles et changements en matière d'immigration</p>
        
        <div class="news-grid">
            <div class="news-card">
                <div class="news-image" style="background-image: url('immigrer.png');"></div>
                <div class="news-content">
                    <span class="date">20 Mai 2025</span>
                    <h3>Nouvelles règles d'immigration au Canada pour 2025</h3>
                    <p>Le Canada a annoncé de nouveaux critères de sélection pour les immigrants qualifiés...</p>
                    <a href="#" class="read-more">Lire plus <i class="fas fa-arrow-right"></i></a>
                </div>
            </div>
            
            <div class="news-card">
                <div class="news-image" style="background-image: url('wx.jpg');"></div>
                <div class="news-content">
                    <span class="date">15 Mai 2025</span>
                    <h3>Opportunités de travail en Allemagne pour les francophones</h3>
                    <p>L'Allemagne recherche activement des travailleurs qualifiés dans plusieurs secteurs...</p>
                    <a href="#" class="read-more">Lire plus <i class="fas fa-arrow-right"></i></a>
                </div>
            </div>
            
            <div class="news-card">
                <div class="news-image" style="background-image: url('langue.png');"></div>
                <div class="news-content">
                    <span class="date">10 Mai 2025</span>
                    <h3>Bourses d'études disponibles en Europe pour 2025-2026</h3>
                    <p>Plusieurs universités européennes offrent des bourses complètes pour les étudiants internationaux...</p>
                    <a href="#" class="read-more">Lire plus <i class="fas fa-arrow-right"></i></a>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- FAQ Section -->
<section class="faq">
    <div class="container">
        <h2>Questions fréquentes</h2>
        <p class="subtitle">Trouvez des réponses aux questions les plus courantes sur l'immigration</p>
        
        <div class="faq-container">
            <div class="faq-item">
                <button class="faq-question">
                    Combien de temps prend le processus d'immigration?
                    <i class="fas fa-chevron-down"></i>
                </button>
                <div class="faq-answer">
                    <p>Le délai varie selon le pays de destination et le type de visa. En moyenne, il faut compter entre 3 et 12 mois pour un visa de résidence permanente. Nous pouvons vous fournir une estimation plus précise après l'évaluation de votre profil.</p>
                </div>
            </div>
            
            <div class="faq-item">
                <button class="faq-question">
                    Quels sont les documents nécessaires pour commencer?
                    <i class="fas fa-chevron-down"></i>
                </button>
                <div class="faq-answer">
                    <p>Les documents de base incluent généralement un passeport valide, des diplômes, un casier judiciaire, des preuves de fonds et des résultats de tests linguistiques. Nous établissons une liste personnalisée en fonction de votre situation.</p>
                </div>
            </div>
            
            <div class="faq-item">
                <button class="faq-question">
                    Quels sont les pays où vous opérez?
                    <i class="fas fa-chevron-down"></i>
                </button>
                <div class="faq-answer">
                    <p>Nous accompagnons principalement vers le Canada, les États-Unis, la France, l'Allemagne, la Belgique, l'Espagne et l'Australie. Contactez-nous pour connaître les opportunités dans d'autres pays.</p>
                </div>
            </div>
            
            <div class="faq-item">
                <button class="faq-question">
                    Quelles sont vos conditions de réussite?
                    <i class="fas fa-chevron-down"></i>
                </button>
                <div class="faq-answer">
                    <p>Nous avons un taux de réussite de 92% pour les dossiers complets. Notre engagement est de vous fournir toutes les informations et de préparer votre dossier selon les exigences des autorités d'immigration.</p>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Contact Section -->
<section class="contact">
    <div class="container">
        <div class="contact-info">
            <h3>Contactez-nous</h3>
            <p>Nous sommes disponibles pour répondre à toutes vos questions sur l'immigration.</p>
            
             <ul>
                    <li><i class="fas fa-phone"></i> (+237) 6 97 17 76 36 - Douala </li>
                    <li><i class="fas fa-phone"></i> (+237) 6 20 27 96 30 - Yaoundé </li>
                    <li><i class="fas fa-phone"></i> (+237) 6 71 33 93 88 - Yaoundé </li>
                    <li><i class="fas fa-phone"></i> (+237) 6 73 73 06 86 - Douala </li>
                    <li><i class="fas fa-envelope"></i>globalvisaltd1@gmail.com</li>
                    <li><i class="fas fa-map-marker-alt"></i>Douala-douala Carrefour-Makepe Belavie a la montée du lycée de Makepe</li>
                    <li><i class="fas fa-map-marker-alt"></i>Yaoundé-Immeuble Zassi en face du stade annexe omnisports</li>
                </ul>
            
            <div class="social-links">
                <a href="#" aria-label="Facebook"><i class="fab fa-facebook-f"></i></a>
                <a href="#" aria-label="Twitter"><i class="fab fa-twitter"></i></a>
                <a href="#" aria-label="Instagram"><i class="fab fa-instagram"></i></a>
                <a href="#" aria-label="LinkedIn"><i class="fab fa-linkedin-in"></i></a>
                <a href="#" aria-label="WhatsApp"><i class="fab fa-whatsapp"></i></a>
                <a href="https://www.tiktok.com/@global.visa.ltd?_t=ZM-8wgI7NvyO9Q&_r=1" target="_blank" style="color: #bbb; margin-right: 15px; font-size: 1.2rem;">
  <i class="fab fa-tiktok"></i>
</a>
            </div>
        </div>
        
        <div class="contact-form">
            <h3>Envoyez-nous un message</h3>
            <form action="ContactServlet" method="POST">
                <div class="form-group">
                    <input type="text" name="name" placeholder="Votre nom complet" required>
                </div>
                <div class="form-group">
                    <input type="email" name="email" placeholder="Votre adresse email" required>
                </div>
                <div class="form-group">
                    <input type="tel" name="phone" placeholder="Votre numéro de téléphone">
                </div>
                <div class="form-group">
                    <select name="subject" required>
                        <option value="" disabled selected>Sélectionnez un sujet</option>
                        <option value="visa">Demande de visa</option>
                        <option value="evaluation">Évaluation de profil</option>
                        <option value="billet">Billeterie aérienne</option>
                        <option value="langue">Cours de langue</option>
                        <option value="autre">Autre question</option>
                    </select>
                </div>
                <div class="form-group">
                    <textarea name="message" placeholder="Votre message" required></textarea>
                </div>
                <button type="submit" class="btn">Envoyer le message</button>
            </form>
        </div>
    </div>
</section>

<!-- Partners Section -->
<section class="partners-section">
    <div class="container">
        <h4>Nos partenaires partenaires</h4>
        <div class="partners-grid">
            <div class="partner">
                <img src="nyu.jpg" alt="New York University">
            </div>
            <div class="partner">
                <img src="logo-universite-de-lille.jpg" alt="Université de Lille">
            </div>
            <div class="partner">
                <img src="Capture d’écran 2025-05-20 085758.jpg" alt="Université du Québec à Chicoutimi">
            </div>
            <div class="partner">
                <img src="Capture d’écran 2025-05-20 090048.jpg" alt="Université Paris Nanterre">
            </div>
                      <div class="partner">
                    <img src="Capture d’écran 2025-05-20 093102.jpg" alt="Université du Québec à Rimouski">
                </div>
                <div class="partner">
                    <img src="Capture d’écran 2025-05-20 093411.jpg" alt="Université de Saint-Boniface">
                </div>
                 <div class="partner">
                    <img src="Capture d’écran 2025-05-20 093557.jpg" alt="Université Paris Descartes">
                </div>
                 <div class="partner">
                    <img src="pres-universite-de-bordeaux-logo.svg_8768eded334bbbb7ae22af391a85c22b.png" alt="Université de Bordeaux">
                </div>
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
                    
                    <li><i class="fas fa-phone-alt"></i> (+237) 6 20 27 96 30 </li>
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
    
    // Hero Slider
    const slides = document.querySelectorAll('.slide');
    const prevBtn = document.querySelector('.prev');
    const nextBtn = document.querySelector('.next');
    let currentSlide = 0;
    
    function showSlide(n) {
        slides.forEach(slide => slide.classList.remove('active'));
        currentSlide = (n + slides.length) % slides.length;
        slides[currentSlide].classList.add('active');
    }
    
    prevBtn.addEventListener('click', () => showSlide(currentSlide - 1));
    nextBtn.addEventListener('click', () => showSlide(currentSlide + 1));
    
    // Auto slide change every 5 seconds
    setInterval(() => showSlide(currentSlide + 1), 5000);
    
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
    
    // FAQ Accordion
    const faqQuestions = document.querySelectorAll('.faq-question');
    
    faqQuestions.forEach(question => {
        question.addEventListener('click', () => {
            question.classList.toggle('active');
            const answer = question.nextElementSibling;
            
            if (question.classList.contains('active')) {
                answer.style.maxHeight = answer.scrollHeight + 'px';
            } else {
                answer.style.maxHeight = 0;
            }
        });
    });
    
    // Header Scroll Effect
    window.addEventListener('scroll', () => {
        const header = document.querySelector('.header');
        header.classList.toggle('scrolled', window.scrollY > 50);
    });
</script>

</body>
</html>