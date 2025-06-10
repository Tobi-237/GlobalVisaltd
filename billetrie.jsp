<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formation en Billeterie Aérienne | Global Visa LTD</title>
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
            padding-top: 80px;
            color: var(--text-color);
            line-height: 1.6;
            background-color: var(--light-color);
        }

        .container {
            width: 100%;
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 20px;
        }
        .play-button {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    width: 80px;
    height: 80px;
    background: rgba(230, 126, 34, 0.8);
    border-radius: 50%;
    cursor: pointer;
    z-index: 2;
    transition: all 0.3s ease;
}

.play-button::after {
    content: "";
    position: absolute;
    left: 55%;
    top: 50%;
    transform: translate(-50%, -50%);
    border-style: solid;
    border-width: 15px 0 15px 26px;
    border-color: transparent transparent transparent white;
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

        /* Hero Section */
        .billetrie-hero {
            background: linear-gradient(rgba(139, 69, 19, 0.8), rgba(139, 69, 19, 0.8)), 
                        url('billetrie-hero.jpg') no-repeat center center/cover;
            height: 60vh;
            display: flex;
            align-items: center;
            text-align: center;
            color: var(--light-color);
            position: relative;
            animation: fadeIn 1.5s ease-in-out;
        }

        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        }

        .hero-content {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
        }

        .hero-content h1 {
            font-family: var(--font-heading);
            font-size: 3rem;
            margin-bottom: 20px;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.3);
        }

        .hero-content p {
            font-size: 1.2rem;
            margin-bottom: 30px;
        }

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
            transform: translateY(-3px);
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
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

        /* About Formation */
        .about-formation {
            background-color: var(--gray-color);
        }

        .formation-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 40px;
            align-items: center;
        }

        .formation-image {
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 15px 30px rgba(0, 0, 0, 0.1);
            transition: transform 0.5s;
        }

        .formation-image:hover {
            transform: scale(1.03);
        }

        .formation-image img {
            width: 100%;
            height: auto;
            display: block;
        }

        .formation-content h3 {
            font-size: 1.8rem;
            color: var(--secondary-color);
            margin-bottom: 20px;
        }

        .formation-content p {
            margin-bottom: 15px;
        }

        .highlight-box {
            background-color: var(--light-color);
            border-left: 4px solid var(--primary-color);
            padding: 20px;
            margin: 30px 0;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.05);
        }
        .video-card {
    background-color: var(--light-color);
    border-radius: 12px;
    overflow: hidden;
    box-shadow: 0 10px 30px rgba(0, 0, 0, 0.08);
    transition: var(--transition);
    margin-bottom: 30px;
    position: relative;
    z-index: 1;
}

.video-card:hover {
    transform: translateY(-10px);
    box-shadow: 0 15px 40px rgba(0, 0, 0, 0.12);
}
.about-formation {
    padding: 80px 0;
    background-color: var(--light-color);
}

.formation-grid {
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 40px;
    align-items: center;
    margin-top: 50px;
}

.formation-content {
    padding-right: 30px;
}

.highlight-box {
    background-color: rgba(230, 126, 34, 0.1);
    border-left: 4px solid var(--primary-color);
    padding: 20px;
    margin: 25px 0;
    border-radius: 0 8px 8px 0;
}

.formation-media {
    position: relative;
}

@media (max-width: 992px) {
    .formation-grid {
        grid-template-columns: 1fr;
    }
    
    .formation-content {
        padding-right: 0;
    }
    
    .formation-media {
        margin-top: 40px;
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

        /* Benefits Section */
        .benefits {
            background-color: var(--light-color);
        }

        .benefits-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 30px;
        }

        .benefit-card {
            background-color: var(--gray-color);
            padding: 30px;
            border-radius: 10px;
            text-align: center;
            transition: all 0.3s;
            position: relative;
            overflow: hidden;
            z-index: 1;
        }

        .benefit-card::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: linear-gradient(135deg, var(--primary-color), var(--secondary-color));
            opacity: 0;
            z-index: -1;
            transition: opacity 0.3s;
        }

        .benefit-card:hover {
            color: var(--light-color);
            transform: translateY(-10px);
            box-shadow: 0 15px 30px rgba(0, 0, 0, 0.1);
        }

        .benefit-card:hover::before {
            opacity: 1;
        }

        .benefit-card:hover i,
        .benefit-card:hover h3 {
            color: var(--light-color);
        }

        .benefit-card i {
            font-size: 3rem;
            color: var(--primary-color);
            margin-bottom: 20px;
            transition: color 0.3s;
        }

        .benefit-card h3 {
            font-size: 1.3rem;
            color: var(--secondary-color);
            margin-bottom: 15px;
            transition: color 0.3s;
        }

        /* Program Details */
        .program-details {
            background-color: var(--gray-color);
        }

        .program-container {
            max-width: 900px;
            margin: 0 auto;
        }

        .program-tabs {
            display: flex;
            justify-content: center;
            margin-bottom: 40px;
            flex-wrap: wrap;
        }

        .tab-btn {
            padding: 12px 25px;
            background-color: var(--light-color);
            border: none;
            color: var(--secondary-color);
            font-weight: 600;
            cursor: pointer;
            transition: all 0.3s;
            border-bottom: 3px solid transparent;
        }

        .tab-btn.active {
            background-color: var(--primary-color);
            color: var(--light-color);
            border-bottom: 3px solid var(--secondary-color);
        }

        .tab-btn:not(.active):hover {
            background-color: rgba(230, 126, 34, 0.1);
        }

        .tab-content {
            display: none;
            animation: fadeIn 0.5s ease-in-out;
        }

        .tab-content.active {
            display: block;
        }

        .module-list {
            list-style-type: none;
        }

        .module-list li {
            padding: 15px;
            border-bottom: 1px solid #ddd;
            display: flex;
            align-items: center;
        }

        .module-list li:last-child {
            border-bottom: none;
        }

        .module-list i {
            color: var(--primary-color);
            margin-right: 15px;
            font-size: 1.2rem;
        }

        /* Call to Action */
        .cta-section {
            background: linear-gradient(rgba(139, 69, 19, 0.9), rgba(139, 69, 19, 0.9)), 
                        url('billetrie-cta.jpg') no-repeat center center/cover;
            color: var(--light-color);
            text-align: center;
            padding: 100px 0;
            position: relative;
        }

        .cta-content {
            max-width: 700px;
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

        .btn-light {
            background-color: var(--light-color);
            color: var(--secondary-color);
        }

        .btn-light:hover {
            background-color: transparent;
            color: var(--light-color);
            border-color: var(--light-color);
        }

        /* Testimonials */
        .testimonials-section {
            background-color: var(--light-color);
        }

        .testimonial-slider {
            max-width: 800px;
            margin: 0 auto;
        }

        .testimonial-card {
            background-color: var(--gray-color);
            padding: 40px;
            border-radius: 10px;
            margin-bottom: 30px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.05);
            position: relative;
        }

        .testimonial-card::before {
            content: '\201C';
            font-family: Georgia, serif;
            font-size: 5rem;
            color: rgba(139, 69, 19, 0.1);
            position: absolute;
            top: 20px;
            left: 20px;
        }

        .testimonial-card p {
            font-style: italic;
            font-size: 1.1rem;
            margin-bottom: 30px;
            position: relative;
            z-index: 1;
        }

        .testimonial-author {
            display: flex;
            align-items: center;
        }

        .testimonial-author img {
            width: 60px;
            height: 60px;
            border-radius: 50%;
            object-fit: cover;
            margin-right: 15px;
        }

        .author-info h4 {
            font-size: 1.2rem;
            color: var(--secondary-color);
            margin-bottom: 5px;
        }

        .author-info span {
            font-size: 0.9rem;
            color: var(--text-color);
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
            background-color: rgba(139, 69, 19, 0.3);
            margin: 0 5px;
            cursor: pointer;
            transition: all 0.3s;
        }

        .dot.active {
            background-color: var(--primary-color);
            transform: scale(1.2);
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

/* Partners Section */
.partners-section {
    padding: 40px 0;
    border-bottom: 1px solid rgba(255, 255, 255, 0.1);
    margin-bottom: 40px;
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
    gap: 20px;
}

.partner {
    height: 80px;
    display: flex;
    align-items: center;
    justify-content: center;
    filter: grayscale(100%);
    opacity: 0.7;
    transition: all 0.3s;
}

.partner:hover {
    filter: grayscale(0%);
    opacity: 1;
}

.partner img {
    width: 100px;
    height: auto;
    display: block;
    margin: 0 auto;
}
        /* Responsive */
        @media (max-width: 992px) {
            .hero-content h1 {
                font-size: 2.5rem;
            }
            
            section {
                padding: 60px 0;
            }
        }

        @media (max-width: 768px) {
            .hero-content h1 {
                font-size: 2rem;
            }
            
            .formation-grid {
                grid-template-columns: 1fr;
            }
            
            .formation-image {
                order: -1;
            }
            
            .tab-btn {
                padding: 10px 15px;
                font-size: 0.9rem;
            }
        }

        @media (max-width: 576px) {
            .hero-content h1 {
                font-size: 1.8rem;
            }
            
            .hero-content p {
                font-size: 1rem;
            }
            
            .benefit-card {
                padding: 20px;
            }
            
            .testimonial-card {
                padding: 30px 20px;
            }
            @media (max-width: 768px) {
    .video-card {
        margin-bottom: 20px;
    }
    
    .video-info {
        padding: 20px;
    }
    
    .video-title {
        font-size: 1.3rem;
    }
}

@media (max-width: 576px) {
    .video-info {
        padding: 15px;
    }
    
    .video-title {
        font-size: 1.2rem;
    }
    
    .video-desc {
        font-size: 0.95rem;
    }
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
<section class="billetrie-hero">
    <div class="container">
        <div class="hero-content">
            <h1>Formation Professionnelle en Billeterie Aérienne</h1>
            <p>Devenez expert dans la  réservation, l'emmission et la gestion de billets d'avion avec notre formation complète</p>
        </div>
    </div>
</section>

<!-- About Formation -->
<!-- About Formation -->
<section class="about-formation">
    <div class="container">
        <h2>Qu'est-ce que la billeterie aérienne ?</h2>
        <p class="subtitle">Découvrez un métier passionnant au cœur de l'industrie aérienne</p>
        
        <div class="formation-grid">
            <div class="formation-content">
                <h3>Maîtrisez les systèmes de réservation mondiaux</h3>
                <p>La billetterie aérienne consiste à gérer la réservation et l'émission des billets d'avion via des systèmes spécialisés tels que : AMADEUS, SABRE, GALILEO. Ces plateformes offrent d'autres prestations de services telles que : réservations d'hôtels et location de voiture.</p>
                
                <div class="highlight-box">
                    <p>Les professionnels travaillant dans ce domaine utilisent des GDS qui sont des systèmes fiables et synchronisés permettant d'avoir des itinéraires en temps réel pour accéder aux horaires de vols et aux tarifs.</p>
                </div>
                
                <p>Notre formation vous prépare à maîtriser ces outils puissants et à devenir un professionnel recherché du secteur aérien.</p>
            </div>
            
            <div class="formation-media">
             <div class="video-card">
    <div class="video-container" onclick="this.querySelector('iframe').src += '&autoplay=1'">
        <iframe src="https://www.youtube.com/embed/388zVuOBERc?rel=0&enablejsapi=1&modestbranding=1" 
                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" 
                allowfullscreen
                title="Systèmes de billeterie aérienne"
                aria-label="Vidéo démo systèmes GDS"
                loading="lazy"></iframe>
                    </div>
                    <div class="video-info">
                        <h3 class="video-title">Responsabe de la formation en billeterie Aerienne de Douala<i class="fa-sharp-duotone fa-thin fa-user"></i></h3>
                        <p class="video-desc">Voir comment fonctionnent les systèmes de réservation professionnels</p>
                    </div>
    </div>
              <div class="video-card">
    <div class="video-container" onclick="this.querySelector('iframe').src += '&autoplay=1'">
        <iframe src="https://www.youtube.com/embed/W6kNvoKiGZc?rel=0&enablejsapi=1&modestbranding=1" 
                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" 
                allowfullscreen
                title="Systèmes de billeterie aérienne"
                aria-label="Vidéo démo systèmes GDS"
                loading="lazy"></iframe>
                    </div>
                    <div class="video-info">
                        <h3 class="video-title">Formateur chez Gvisa<i class="fa-sharp-duotone fa-thin fa-user"></i></h3>
                        <p class="video-desc">Voir comment fonctionnent les systèmes de réservation professionnels des billets d'avions </p>
                    </div>
    </div>
    
</div>
            </div>
        </div>
</section>

<!-- Benefits Section -->
<section class="benefits">
    <div class="container">
        <h2>Pourquoi suivre notre formation ?</h2>
        <p class="subtitle">Les avantages de devenir un professionnel certifié en billeterie aérienne</p>
        
        <div class="benefits-grid">
            <div class="benefit-card">
                <i class="fas fa-laptop-code"></i>
                <h3>Maîtrise des GDS</h3>
                <p>Apprenez à utiliser les systèmes de réservation comme Amadeus, Sabre et Galileo avec des exercices pratiques.</p>
            </div>
            
            <div class="benefit-card">
                <i class="fas fa-chart-line"></i>
                <h3>Opportunités professionnelles</h3>
                <p>Accédez à des postes dans les agences de voyages, compagnies aériennes ou services corporate.</p>
            </div>
            
            <div class="benefit-card">
                <i class="fas fa-globe"></i>
                <h3>Connaissance mondiale</h3>
                <p>Apprenez les codes aéroports, les routes et les spécificités des vols internationaux.</p>
            </div>
            
            <div class="benefit-card">
                <i class="fas fa-user-tie"></i>
                <h3>Service client expert</h3>
                <p>Développez des compétences en conseil et service client pour répondre aux besoins des voyageurs et les édifier.</p>
            </div>
            
            <div class="benefit-card">
                <i class="fas fa-tags"></i>
                <h3>Gestion tarifaire</h3>
                <p>Comprenez les règles tarifaires complexes et apprenez à trouver les meilleurs prix.</p>
            </div>
            
            <div class="benefit-card">
                <i class="fas fa-certificate"></i>
                <h3>Certification reconnue</h3>
                <p>Obtenez une certification valorisée par les employeurs du secteur du voyage.</p>
            </div>
        </div>
    </div>
</section>

<!-- Program Details -->
<section class="program-details">
    <div class="container">
        <h2>Notre Programme de Formation</h2>
        <p class="subtitle">Un cursus complet pour devenir expert en billeterie aérienne</p>
        
        <div class="program-container">
            <div class="program-tabs">
                <button class="tab-btn active" data-tab="modules">Modules</button>
                <button class="tab-btn" data-tab="objectifs">Objectifs</button>
                <button class="tab-btn" data-tab="prerequis">Prérequis</button>
                <button class="tab-btn" data-tab="duree">Durée et Modalités</button>
            </div>
            
            <div class="tab-content active" id="modules">
                <h3>Modules de formation</h3>
                <ul class="module-list">
                    <li><i class="fas fa-plane-departure"></i> Introduction à l'industrie aérienne</li>
                    <li><i class="fas fa-search"></i> Notions de réservation de vols</li>
                    <li><i class="fas fa-ticket-alt"></i> -Les Systèmes de Distribution Globaux (GDS)</li>
                    <li><i class="fas fa-route"></i> Tarification aérienne</li>
                    <li><i class="fas fa-plane-departure"></i>Réservation de vols internationaux</li>
                    <li><i class="fas fa-money-bill-wave"></i> Gestion des passagers et types de billets</li>
                    <li><i class="fas fa-money-bill-wave"></i> Les billets flexibles et non flexibles</li>
                    <li><i class="fas fa-money-bill-wave"></i>Gestion des annulations et remboursements</li>
                    <li><i class="fas fa-ticket-alt"></i> Compétences commerciales et vente en billetterie aérienne</li>
                    <li><i class="fas fa-money-bill-wave"></i>Gestion des billets et documents d'embarquement</li>
                    <li><i class="fas fa-headset"></i>Examen final et certification</li>
                </ul>
            </div>
            
            <div class="tab-content" id="objectifs">
                <h3>Objectifs pédagogiques</h3>
                <ul class="module-list">
                    <li><i class="fas fa-check-circle"></i>  Comprendre le secteur du transport aérien,
 son histoire et ses acteurs</li>
                    <li><i class="fas fa-check-circle"></i> Maîtriser les bases de la réservation et la gestion des 
réservations passagers</li>
                    <li><i class="fas fa-check-circle"></i>  Apprendre à utiliser les GDS pour la réservation et la 
gestion des vols</li>
                    <li><i class="fas fa-check-circle"></i> Comprendre la structure tarifaire et les différents types de 
billets</li>
                    <li><i class="fas fa-check-circle"></i> Maîtriser la réservation et la gestion des vols 
internationaux</li>
                    <li><i class="fas fa-check-circle"></i>Apprendre à gérer les passagers et différents types de 
billets</li>
<li><i class="fas fa-check-circle"></i> Comprendre les différences entre billets flexibles et non 
flexibles</li>
<li><i class="fas fa-check-circle"></i> Maîtriser les procédures d'annulation et de 
remboursement des billets</li>
<li><i class="fas fa-check-circle"></i> Compétences Commerciales 
et Vente en Billetterie Aérienne </li>
<li><i class="fas fa-check-circle"></i>  Gestion des Billets et 
Documents d’Embarquement</li>
<li><i class="fas fa-check-circle"></i>  Tester les connaissances pratiques et théoriques acquises 
durant la formation</li>
                </ul>
            </div>
            
            <div class="tab-content" id="prerequis">
                <h3>Prérequis</h3>
                <ul class="module-list">
                     <li><i class="fas fa-language"></i> Bonne maîtrise du français et de l'anglais</li>
                    <li><i class="fas fa-laptop"></i> avoir les bases des outils informatiques</li>
                    <li><i class="fas fa-heart"></i> Intérêt pour le secteur du voyage aerien</li>
                    <li><i class="fas fa-users"></i> Qualités relationnelles et sens du service</li>
                </ul>
            </div>
            
            <div class="tab-content" id="duree">
                <h3>Durée et modalités</h3>
                <ul class="module-list">
                    <li><i class="fas fa-clock"></i> Durée :01 mois intensifs(théorie + pratique)</li>
                    <li><i class="fas fa-calendar-alt"></i> Sessions matin, après-midi ou soirée</li>
                    <li><i class="fas fa-chalkboard-teacher"></i> Formation en présentiel avec formateurs experts</li>
                    <li><i class="fas fa-laptop-house"></i> Option hybride (présentiel + e-learning)</li>
                    <li><i class="fas fa-certificate"></i> Certification finale avec examen pratique</li>
                    <li><i class="fas fa-briefcase"></i> Aide au placement professionnel après formation</li>
                </ul>
            </div>
        </div>
    </div>
</section>

<!-- Testimonials -->
<section class="testimonials-section">
    <div class="container">
        <h2>Témoignages en vidéo</h2>
        
        <div class="video-grid">
            <!-- Video 1 -->
            <div class="video-card">
                <div class="video-container" onclick="this.querySelector('iframe').src += '&autoplay=1'">
                    <iframe src="https://www.youtube.com/embed/MWpA3w9iZVA?rel=0&enablejsapi=1&modestbranding=1" 
                            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" 
                            allowfullscreen
                            title="Systèmes de billeterie aérienne"
                            aria-label="Vidéo démo systèmes GDS"
                            loading="lazy"></iframe>
                </div>
                <div class="video-info">
                    <h3 class="video-title">Le métier de la billetterie aérienne</h3>
                </div>
            </div>
            
            <!-- Video 2 -->
            <div class="video-card">
                <div class="video-container" onclick="this.querySelector('iframe').src += '&autoplay=1'">
                    <iframe src="https://www.youtube.com/embed/UGmA223tSl4?rel=0&enablejsapi=1&modestbranding=1" 
                            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" 
                            allowfullscreen
                            title="Études en France"
                            aria-label="Vidéo d'Amina"
                            loading="lazy"></iframe>
                </div>
                <div class="video-info">
                    <h3 class="video-title">L’importance de la billetterie aérienne</h3>
                    
                </div>
            </div>
            
            <!-- Video 3 -->
            <div class="video-card">
                <div class="video-container" onclick="this.querySelector('iframe').src += '&autoplay=1'">
                    <iframe src="https://www.youtube.com/embed/6DP6QAw-PwQ?rel=0&enablejsapi=1&modestbranding=1" 
                            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" 
                            allowfullscreen
                            title="Travail aux USA"
                            aria-label="Vidéo de Paul"
                            loading="lazy"></iframe>
                </div>
                <div class="video-info">
                    <h3 class="video-title">Formation Doaula Billeterie</h3>
                    
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Call to Action -->
<section class="cta-section">
    <div class="container">
        <div class="cta-content">
            <h2>Prêt à décoller vers une nouvelle carrière ?</h2>
            <p>Notre formation en billeterie aérienne ouvre les portes d'un secteur dynamique avec de réelles opportunités professionnelles. Inscrivez-vous dès maintenant à notre prochaine session.</p>
            <a href="https://wa.me/+237650841557" class="btn btn-light">Demander plus d'informations</a>
        </div>
    </div>
</section>
<!-- Footer (identique à accueil.jsp) -->
<footer class="footer">
    <div class="container">
        <div class="footer-grid">
            <div class="footer-col">
                <h4>Global Visa LTD</h4>
                <p>Votre partenaire de confiance pour tous vos projets d'immigration et formations professionnelles à travers le monde.</p>
                <div class="footer-logo">
                    <i class="fas fa-passport"></i> Global Visa LTD
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
                <h4>Nos formations</h4>
                <ul>
                    <li><a href="billetrie.jsp">Billeterie Aérienne</a></li>
                    <li><a href="langue.jsp">Cours de langue</a></li>
                    <li><a href="integration.jsp">Intégration professionnelle</a></li>
                </ul>
            </div>
             
            <div class="footer-col">
                <h4>Contact</h4>
                <ul>
                    <li><i class="fas fa-phone"></i> (+237) 6 97 17 76 36</li>
                    <li><i class="fas fa-envelope"></i> globalvisaltd1@gmail.com</li>
                    <li><i class="fas fa-map-marker-alt"></i> Douala, Cameroun</li>
                </ul>
                
                <div class="social-links">
                    <a href="#"><i class="fab fa-facebook-f"></i></a>
                    <a href="#"><i class="fab fa-twitter"></i></a>
                    <a href="#"><i class="fab fa-instagram"></i></a>
                    <a href="#"><i class="fab fa-linkedin-in"></i></a>
                    <a href="https://www.tiktok.com/@global.visa.ltd?_t=ZM-8wgI7NvyO9Q&_r=1" target="_blank" style="color: #bbb; margin-right: 15px; font-size: 1.2rem;">
  <i class="fab fa-tiktok"></i>
</a>
                </div>
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
    
    // Program Tabs
    const tabBtns = document.querySelectorAll('.tab-btn');
    const tabContents = document.querySelectorAll('.tab-content');
    
    tabBtns.forEach(btn => {
        btn.addEventListener('click', () => {
            const tabId = btn.getAttribute('data-tab');
            
            // Remove active class from all buttons and contents
            tabBtns.forEach(btn => btn.classList.remove('active'));
            tabContents.forEach(content => content.classList.remove('active'));
            
            // Add active class to clicked button and corresponding content
            btn.classList.add('active');
            document.getElementById(tabId).classList.add('active');
        });
    });
    
    // Testimonial Slider
    const testimonials = document.querySelectorAll('.testimonial-card');
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
    
    // Auto slide change every 5 seconds
    setInterval(() => {
        showTestimonial(currentTestimonial + 1);
    }, 5000);
    
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
                                // Close mobile menu when clicking a link
                if (navLinks.classList.contains('active')) {
                    navLinks.classList.remove('active');
                    hamburger.classList.remove('active');
                }
            }
        });
    });

    // Form submission handling
    const contactForm = document.querySelector('#contact-form form');
    if (contactForm) {
        contactForm.addEventListener('submit', function(e) {
            e.preventDefault();
            
            // Here you would normally send the form data to the server
            // For demonstration, we'll just show an alert
            alert('Merci pour votre demande d\'inscription! Nous vous contacterons très bientôt.');
            this.reset();
            
            // In a real implementation, you would use fetch() or AJAX to submit the form
            /*
            fetch(this.action, {
                method: this.method,
                body: new FormData(this)
            })
            .then(response => response.json())
            .then(data => {
                // Handle success response
                alert('Merci pour votre demande! ' + data.message);
                this.reset();
            })
            .catch(error => {
                // Handle error
                console.error('Error:', error);
                alert('Une erreur est survenue. Veuillez réessayer.');
            });
            */
        });
    }
    document.querySelectorAll('.video-container').forEach(container => {
        container.addEventListener('click', () => {
            const iframe = container.querySelector('iframe');
            iframe.src += "&autoplay=1";
        });
    });

    // Header scroll effect
    window.addEventListener('scroll', function() {
        const header = document.querySelector('.header');
        if (window.scrollY > 50) {
            header.style.padding = '8px 0';
            header.style.boxShadow = '0 4px 15px rgba(0, 0, 0, 0.1)';
        } else {
            header.style.padding = '12px 0';
            header.style.boxShadow = '0 4px 30px rgba(0, 0, 0, 0.08)';
        }
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