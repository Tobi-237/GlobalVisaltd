<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Message Envoyé | Global Visa Ltd</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        :root {
            --white: #ffffff;
            --brown: #8B4513;
            --light-brown: #A0522D;
            --orange: #FF7F50;
            --dark-orange: #E67E22;
        }
        
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        
        body {
            background-color: var(--white);
            color: var(--brown);
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            background-image: radial-gradient(circle at 10% 20%, rgba(255, 215, 165, 0.2) 0%, rgba(255, 255, 255, 0.9) 90%);
        }
        
        .success-container {
            max-width: 800px;
            width: 90%;
            padding: 3rem;
            background: var(--white);
            border-radius: 20px;
            box-shadow: 0 15px 30px rgba(139, 69, 19, 0.1);
            text-align: center;
            position: relative;
            overflow: hidden;
            animation: fadeIn 0.8s ease-out;
            border: 1px solid rgba(139, 69, 19, 0.1);
        }
        
        .success-container::before {
            content: '';
            position: absolute;
            top: -50%;
            left: -50%;
            width: 200%;
            height: 200%;
            background: linear-gradient(45deg, transparent, rgba(255, 127, 80, 0.1), transparent);
            transform: rotate(45deg);
            animation: shine 3s infinite;
        }
        
        .check-icon {
            font-size: 5rem;
            color: var(--orange);
            margin-bottom: 1.5rem;
            animation: bounceIn 1s, pulse 2s infinite;
        }
        
        h1 {
            font-size: 2.5rem;
            margin-bottom: 1rem;
            color: var(--light-brown);
            font-weight: 700;
        }
        
        p {
            font-size: 1.2rem;
            margin-bottom: 2rem;
            line-height: 1.6;
            color: var(--brown);
        }
        
        .btn {
            display: inline-block;
            padding: 12px 30px;
            background: linear-gradient(135deg, var(--orange), var(--dark-orange));
            color: var(--white);
            text-decoration: none;
            border-radius: 50px;
            font-weight: 600;
            transition: all 0.3s ease;
            box-shadow: 0 5px 15px rgba(255, 127, 80, 0.4);
            border: none;
            cursor: pointer;
            font-size: 1rem;
        }
        
        .btn:hover {
            transform: translateY(-3px);
            box-shadow: 0 8px 20px rgba(255, 127, 80, 0.6);
            background: linear-gradient(135deg, var(--dark-orange), var(--orange));
        }
        
        .social-icons {
            margin-top: 2rem;
            display: flex;
            justify-content: center;
            gap: 1.5rem;
        }
        
        .social-icons a {
            color: var(--light-brown);
            font-size: 1.5rem;
            transition: all 0.3s ease;
        }
        
        .social-icons a:hover {
            color: var(--orange);
            transform: scale(1.2);
        }
        
        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }
        
        @keyframes bounceIn {
            0% { transform: scale(0.5); opacity: 0; }
            60% { transform: scale(1.2); opacity: 1; }
            100% { transform: scale(1); }
        }
        
        @keyframes pulse {
            0% { transform: scale(1); }
            50% { transform: scale(1.1); }
            100% { transform: scale(1); }
        }
        
        @keyframes shine {
            0% { left: -100%; }
            20% { left: 100%; }
            100% { left: 100%; }
        }
        
        @media (max-width: 768px) {
            .success-container {
                padding: 2rem;
            }
            
            h1 {
                font-size: 2rem;
            }
            
            p {
                font-size: 1rem;
            }
            
            .check-icon {
                font-size: 4rem;
            }
        }
    </style>
</head>
<body>
    <div class="success-container">
        <div class="check-icon">
            <i class="fas fa-check-circle"></i>
        </div>
        <h1>Message envoyé avec succès !</h1>
        <p>Nous avons bien reçu votre demande et nous vous contacterons dans les plus brefs délais. Merci pour votre confiance.</p>
        <a href="accueil.jsp" class="btn">Retour à l'accueil</a>
        
        <div class="social-icons">
            <a href="https://www.facebook.com/share/16ft3BcgPb/"><i class="fab fa-facebook-f"></i></a>
                         <a href="https://www.tiktok.com/@global.visa.ltd?_t=ZM-8wgI7NvyO9Q&_r=1" target="_blank" style="color: #bbb; margin-right: 15px; font-size: 1.2rem;">
  <i class="fab fa-tiktok"></i></a>
            <a href="https://www.instagram.com/agence_voyage_237?utm_source=ig_web_button_share_sheet&igsh=ZDNlZDc0MzIxNw=="><i class="fab fa-instagram"></i></a>
            
            <a href="https://wa.me/+237687051214"><i class="fab fa-whatsapp"></i></a>
        </div>
    </div>
</body>
</html>