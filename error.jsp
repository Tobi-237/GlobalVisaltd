<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Erreur | Global Visa Ltd</title>
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
            background-image: radial-gradient(circle at 90% 20%, rgba(255, 165, 165, 0.1) 0%, rgba(255, 255, 255, 0.9) 90%);
        }
        
        .error-container {
            max-width: 800px;
            width: 90%;
            padding: 3rem;
            background: var(--white);
            border-radius: 20px;
            box-shadow: 0 15px 30px rgba(139, 69, 19, 0.1);
            text-align: center;
            position: relative;
            overflow: hidden;
            animation: shake 0.5s ease-in-out;
            border: 1px solid rgba(139, 69, 19, 0.1);
        }
        
        .error-icon {
            font-size: 5rem;
            color: var(--dark-orange);
            margin-bottom: 1.5rem;
            animation: wobble 1s infinite alternate;
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
        
        .contact-info {
            margin-top: 2rem;
            padding: 1.5rem;
            background: rgba(255, 127, 80, 0.1);
            border-radius: 10px;
            text-align: left;
        }
        
        .contact-info p {
            margin-bottom: 0.5rem;
            display: flex;
            align-items: center;
            gap: 10px;
        }
        
        .contact-info i {
            color: var(--dark-orange);
            font-size: 1.2rem;
            min-width: 25px;
        }
        
        @keyframes shake {
            0%, 100% { transform: translateX(0); }
            10%, 30%, 50%, 70%, 90% { transform: translateX(-5px); }
            20%, 40%, 60%, 80% { transform: translateX(5px); }
        }
        
        @keyframes wobble {
            0% { transform: rotate(0deg); }
            25% { transform: rotate(-5deg); }
            50% { transform: rotate(0deg); }
            75% { transform: rotate(5deg); }
            100% { transform: rotate(0deg); }
        }
        
        @media (max-width: 768px) {
            .error-container {
                padding: 2rem;
            }
            
            h1 {
                font-size: 2rem;
            }
            
            p {
                font-size: 1rem;
            }
            
            .error-icon {
                font-size: 4rem;
            }
            
            .contact-info {
                padding: 1rem;
            }
        }
    </style>
</head>
<body>
    <div class="error-container">
        <div class="error-icon">
            <i class="fas fa-exclamation-triangle"></i>
        </div>
        <h1>Oups ! Une erreur est survenue</h1>
        <p>Désolé, votre message n'a pas pu être envoyé. Veuillez réessayer plus tard ou nous contacter directement.</p>
        <a href="accueil.jsp" class="btn">Retour à l'accueil</a>
        >
        
        <div class="contact-info">
            <p><i class="fas fa-phone-alt"></i> +237 687 051 214</p>
            <p><i class="fas fa-envelope"></i> contact@globalvisaltd.com</p>
            
        </div>
    </div>
</body>
</html>