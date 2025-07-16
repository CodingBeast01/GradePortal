<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Grade Portal - Student Management System</title>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Inter', sans-serif;
            line-height: 1.6;
            color: #334155;
            background-color: #f8fafc;
        }

        /* Header Styles */
        .header {
            background: linear-gradient(135deg, #1e3a8a 0%, #3730a3 100%);
            color: white;
            padding: 1rem 0;
            position: sticky;
            top: 0;
            z-index: 1000;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }

        .nav {
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 2rem;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .nav-brand {
            display: flex;
            align-items: center;
            gap: 0.5rem;
            font-size: 1.5rem;
            font-weight: 700;
        }

        .nav-brand i {
            font-size: 1.8rem;
            color: #fbbf24;
        }

        .nav-links {
            display: flex;
            list-style: none;
            gap: 1.5rem;
            align-items: center;
        }

        .nav-links a {
            color: white;
            text-decoration: none;
            font-weight: 500;
            transition: all 0.3s ease;
            padding: 0.5rem 1rem;
            border-radius: 6px;
            position: relative;
        }

        .nav-links a:hover {
            background-color: rgba(255, 255, 255, 0.1);
            transform: translateY(-2px);
        }

        .nav-links .login-btn {
            background: linear-gradient(135deg, #3b82f6 0%, #2563eb 100%);
            padding: 0.75rem 1.5rem;
            border-radius: 8px;
            font-weight: 600;
            margin-left: 1rem;
        }

        .nav-links .login-btn:hover {
            background: linear-gradient(135deg, #2563eb 0%, #1d4ed8 100%);
            transform: translateY(-2px);
            box-shadow: 0 4px 12px rgba(59, 130, 246, 0.3);
        }

        .nav-links .contact-btn {
            background: linear-gradient(135deg, #ef4444 0%, #dc2626 100%);
            padding: 0.75rem 1.5rem;
            border-radius: 8px;
            font-weight: 600;
        }

        .nav-links .contact-btn:hover {
            background: linear-gradient(135deg, #dc2626 0%, #b91c1c 100%);
            transform: translateY(-2px);
            box-shadow: 0 4px 12px rgba(239, 68, 68, 0.3);
        }

        .mobile-menu-toggle {
            display: none;
            font-size: 1.5rem;
            cursor: pointer;
            background: none;
            border: none;
            color: white;
        }

        /* Main Content */
        .main-content {
            max-width: 1200px;
            margin: 0 auto;
            padding: 4rem 2rem;
        }

        .hero-section {
            display: flex;
            align-items: center;
            min-height: 80vh;
        }

        .hero-content {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 4rem;
            align-items: center;
            width: 100%;
        }

        .hero-text h1 {
            font-size: 3rem;
            font-weight: 700;
            line-height: 1.2;
            margin-bottom: 1rem;
            color: #1e293b;
        }

        .highlight {
            color: #3b82f6;
        }

        .brand-highlight {
            font-size: 2.5rem;
            font-weight: 700;
            color: #3b82f6;
            margin-bottom: 2rem;
        }

        .feature-links {
            display: flex;
            flex-direction: column;
            gap: 1rem;
            margin-bottom: 2rem;
        }

        .feature-link {
            display: flex;
            align-items: center;
            gap: 1rem;
            color: #3b82f6;
            text-decoration: none;
            font-weight: 500;
            padding: 1rem;
            border-radius: 8px;
            transition: all 0.3s ease;
            background: white;
            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
        }

        .feature-link:hover {
            background-color: #eff6ff;
            transform: translateX(10px);
            box-shadow: 0 4px 12px rgba(59, 130, 246, 0.15);
        }

        .feature-link i {
            font-size: 1.2rem;
            color: #3b82f6;
        }

        .action-buttons {
            display: flex;
            gap: 1rem;
            margin-top: 2rem;
        }

        .btn {
            padding: 1rem 2rem;
            border: none;
            border-radius: 8px;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.3s ease;
            display: flex;
            align-items: center;
            gap: 0.5rem;
            font-size: 1rem;
            text-decoration: none;
        }

        .btn-primary {
            background: linear-gradient(135deg, #ef4444 0%, #dc2626 100%);
            color: white;
        }

        .btn-primary:hover {
            background: linear-gradient(135deg, #dc2626 0%, #b91c1c 100%);
            transform: translateY(-2px);
            box-shadow: 0 8px 20px rgba(239, 68, 68, 0.3);
        }

        .btn-secondary {
            background: linear-gradient(135deg, #3b82f6 0%, #2563eb 100%);
            color: white;
        }

        .btn-secondary:hover {
            background: linear-gradient(135deg, #2563eb 0%, #1d4ed8 100%);
            transform: translateY(-2px);
            box-shadow: 0 8px 20px rgba(59, 130, 246, 0.3);
        }

        /* Hero Visual */
        .hero-visual {
            display: flex;
            flex-direction: column;
            align-items: center;
            gap: 2rem;
        }

        .profile-container {
            position: relative;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .profile-image {
            width: 300px;
            height: 300px;
            border-radius: 50%;
            overflow: hidden;
            border: 8px solid #f97316;
            box-shadow: 0 20px 40px rgba(0, 0, 0, 0.15);
        }

        .profile-image img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .placement-badge {
            position: absolute;
            top: 20px;
            right: -20px;
            background: white;
            padding: 1rem;
            border-radius: 12px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
            display: flex;
            align-items: center;
            gap: 0.5rem;
            animation: float 3s ease-in-out infinite;
        }

        .placement-badge i {
            color: #fbbf24;
            font-size: 1.5rem;
        }

        .badge-content {
            display: flex;
            flex-direction: column;
        }

        .badge-label {
            font-size: 0.8rem;
            color: #64748b;
            font-weight: 500;
        }

        .badge-value {
            font-size: 1.5rem;
            font-weight: 700;
            color: #1e293b;
        }

        .stats-container {
            display: flex;
            gap: 2rem;
        }

        .stat-item {
            background: white;
            padding: 1.5rem;
            border-radius: 12px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
            display: flex;
            align-items: center;
            gap: 1rem;
            animation: float 3s ease-in-out infinite 1s;
        }

        .stat-item i {
            font-size: 2rem;
            color: #3b82f6;
        }

        .stat-content {
            display: flex;
            flex-direction: column;
        }

        .stat-label {
            font-size: 0.9rem;
            color: #64748b;
            font-weight: 500;
        }

        .stat-value {
            font-size: 1.8rem;
            font-weight: 700;
            color: #1e293b;
        }

        /* Modal Styles */
        .modal {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.5);
            z-index: 2000;
            backdrop-filter: blur(5px);
        }

        .modal-content {
            background: white;
            margin: 5% auto;
            padding: 0;
            border-radius: 12px;
            max-width: 500px;
            width: 90%;
            box-shadow: 0 20px 40px rgba(0, 0, 0, 0.2);
            animation: slideIn 0.3s ease-out;
        }

        .modal-header {
            padding: 1.5rem;
            border-bottom: 1px solid #e2e8f0;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .modal-header h3 {
            font-size: 1.5rem;
            font-weight: 600;
            color: #1e293b;
        }

        .modal-close {
            background: none;
            border: none;
            font-size: 2rem;
            cursor: pointer;
            color: #64748b;
            padding: 0;
            width: 30px;
            height: 30px;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .modal-close:hover {
            color: #ef4444;
        }

        .modal-body {
            padding: 1.5rem;
        }

        .form-group {
            margin-bottom: 1.5rem;
        }

        .form-group label {
            display: block;
            margin-bottom: 0.5rem;
            font-weight: 500;
            color: #374151;
        }

        .form-group input,
        .form-group textarea {
            width: 100%;
            padding: 0.75rem;
            border: 2px solid #e2e8f0;
            border-radius: 8px;
            font-size: 1rem;
            transition: border-color 0.3s ease;
        }

        .form-group input:focus,
        .form-group textarea:focus {
            outline: none;
            border-color: #3b82f6;
        }

        .form-group textarea {
            resize: vertical;
            min-height: 100px;
        }

        /* Animations */
        @keyframes float {
            0%, 100% { transform: translateY(0px); }
            50% { transform: translateY(-10px); }
        }

        @keyframes slideIn {
            from {
                opacity: 0;
                transform: translateY(-50px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
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

        @keyframes slideInFromRight {
            from {
                opacity: 0;
                transform: translateX(100px);
            }
            to {
                opacity: 1;
                transform: translateX(0);
            }
        }

        @keyframes slideOutToRight {
            from {
                opacity: 1;
                transform: translateX(0);
            }
            to {
                opacity: 0;
                transform: translateX(100px);
            }
        }

        /* Notification Styles */
        .notification-content {
            display: flex;
            align-items: center;
            gap: 1rem;
        }

        .notification-icon {
            font-size: 1.2rem;
            font-weight: bold;
        }

        .notification-message {
            flex: 1;
        }

        .notification-close {
            background: none;
            border: none;
            color: white;
            font-size: 1.5rem;
            cursor: pointer;
            padding: 0;
            width: 24px;
            height: 24px;
            display: flex;
            align-items: center;
            justify-content: center;
            border-radius: 50%;
            transition: background-color 0.3s ease;
        }

        .notification-close:hover {
            background-color: rgba(255, 255, 255, 0.2);
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .nav-links {
                display: none;
                position: absolute;
                top: 100%;
                left: 0;
                width: 100%;
                background: linear-gradient(135deg, #1e3a8a 0%, #3730a3 100%);
                flex-direction: column;
                padding: 1rem;
                box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            }

            .nav-links.active {
                display: flex;
            }

            .nav-links li {
                margin: 0.5rem 0;
                width: 100%;
            }

            .nav-links a {
                display: block;
                text-align: center;
                width: 100%;
            }

            .mobile-menu-toggle {
                display: block;
            }

            .hero-content {
                grid-template-columns: 1fr;
                text-align: center;
                gap: 2rem;
            }

            .hero-text h1 {
                font-size: 2rem;
            }

            .brand-highlight {
                font-size: 1.8rem;
            }

            .profile-image {
                width: 250px;
                height: 250px;
            }

            .action-buttons {
                flex-direction: column;
                align-items: center;
            }

            .btn {
                width: 100%;
                justify-content: center;
            }

            .stats-container {
                flex-direction: column;
                align-items: center;
            }

            .placement-badge {
                position: static;
                margin-top: 1rem;
            }
        }

        @media (max-width: 480px) {
            .main-content {
                padding: 2rem 1rem;
            }

            .nav {
                padding: 0 1rem;
            }

            .hero-text h1 {
                font-size: 1.8rem;
            }

            .profile-image {
                width: 200px;
                height: 200px;
            }

            .feature-link {
                padding: 0.75rem;
            }

            .modal-content {
                margin: 10% auto;
            }
        }
    </style>
</head>
<body>
    <header class="header">
        <nav class="nav">
            <div class="nav-brand">
                <i class="fas fa-graduation-cap"></i>
                <span>Grade Portal</span>
            </div>
            <ul class="nav-links">
                <li><a href="#home">Home</a></li>
                <li><a href="#dashboard">Dashboard</a></li>
                <li><a href="#students">Students</a></li>
                <li><a href="#reports">Reports</a></li>
                <li><a href="#settings">Settings</a></li>
                <li><a href="#login" class="login-btn">Login / Signup</a></li>
                <li><a href="#contact" class="contact-btn">Contact Us</a></li>
            </ul>
            <button class="mobile-menu-toggle">
                <i class="fas fa-bars"></i>
            </button>
        </nav>
    </header>

    <main class="main-content">
        <section class="hero-section">
            <div class="hero-content">
                <div class="hero-text">
                    <h3>Streamline Your <span class="highlight">Academic Excellence</span> with the Grade Management System at</h3>
                    <h2 class="brand-highlight">Grade Portal</h2>
                    
                    <div class="feature-links">
                        <a href="AddStudent" class="feature-link">
                            <i class="fas fa-user-plus"></i>
                            Add a New Student
                        </a>
                        <a href="deleteStudent" class="feature-link">
                            <i class="fas fa-user-times"></i>
                            Delete an Existing Student
                        </a>
                        <a href="#total-students" class="feature-link">
                            <i class="fas fa-users"></i>
                            Total Number of Students
                        </a>
                        <a href="#student-report" class="feature-link">
                            <i class="fas fa-chart-bar"></i>
                            Get Student Report
                        </a>
                        <a href="#update-student" class="feature-link">
                            <i class="fas fa-user-edit"></i>
                            Update Student Information
                        </a>
                    </div>

                    <div class="action-buttons">
                        <button class="btn btn-primary" id="enquire-btn">
                            <i class="fas fa-envelope"></i>
                            Enquire Now
                        </button>
                        <button class="btn btn-secondary" id="call-btn">
                            <i class="fas fa-phone"></i>
                            Call us now
                        </button>
                    </div>
                </div>

                <div class="hero-visual">
                    <div class="profile-container">
                        <div class="profile-image">
                            <img src="https://images.pexels.com/photos/5212345/pexels-photo-5212345.jpeg?auto=compress&cs=tinysrgb&w=400" alt="Education Professional">
                        </div>
                        <div class="placement-badge">
                            <i class="fas fa-trophy"></i>
                            <div class="badge-content">
                                <span class="badge-label">Success Rate</span>
                                <span class="badge-value">98%</span>
                            </div>
                        </div>
                    </div>
                    
                    <div class="stats-container">
                        <div class="stat-item">
                            <i class="fas fa-user-graduate"></i>
                            <div class="stat-content">
                                <span class="stat-label">Active Students</span>
                                <span class="stat-value">25000+</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>

    <!-- Enquire Modal -->
    <div class="modal" id="enquire-modal">
        <div class="modal-content">
            <div class="modal-header">
                <h3>Enquire Now</h3>
                <button class="modal-close">&times;</button>
            </div>
            <div class="modal-body">
                <form id="enquire-form">
                    <div class="form-group">
                        <label for="name">Full Name</label>
                        <input type="text" id="name" name="name" required>
                    </div>
                    <div class="form-group">
                        <label for="email">Email Address</label>
                        <input type="email" id="email" name="email" required>
                    </div>
                    <div class="form-group">
                        <label for="phone">Phone Number</label>
                        <input type="tel" id="phone" name="phone" required>
                    </div>
                    <div class="form-group">
                        <label for="message">Message</label>
                        <textarea id="message" name="message" rows="4" placeholder="Tell us about your requirements..."></textarea>
                    </div>
                    <button type="submit" class="btn btn-primary">Send Enquiry</button>
                </form>
            </div>
        </div>
    </div>

    <!-- Login Modal -->
    <div class="modal" id="login-modal">
        <div class="modal-content">
            <div class="modal-header">
                <h3>Login / Signup</h3>
                <button class="modal-close">&times;</button>
            </div>
            <div class="modal-body">
                <form id="login-form">
                    <div class="form-group">
                        <label for="login-email">Email Address</label>
                        <input type="email" id="login-email" name="email" required>
                    </div>
                    <div class="form-group">
                        <label for="login-password">Password</label>
                        <input type="password" id="login-password" name="password" required>
                    </div>
                    <button type="submit" class="btn btn-primary">Login</button>
                    <p style="text-align: center; margin-top: 1rem; color: #64748b;">
                        Don't have an account? <a href="#" style="color: #3b82f6;">Sign up here</a>
                    </p>
                </form>
            </div>
        </div>
    </div>

    <!-- Contact Modal -->
    <div class="modal" id="contact-modal">
        <div class="modal-content">
            <div class="modal-header">
                <h3>Contact Us</h3>
                <button class="modal-close">&times;</button>
            </div>
            <div class="modal-body">
                <div style="margin-bottom: 2rem;">
                    <h4 style="color: #1e293b; margin-bottom: 1rem;">Get in Touch</h4>
                    <div style="display: flex; align-items: center; gap: 1rem; margin-bottom: 1rem;">
                        <i class="fas fa-phone" style="color: #3b82f6;"></i>
                        <span>+1-800-GRADES (472337)</span>
                    </div>
                    <div style="display: flex; align-items: center; gap: 1rem; margin-bottom: 1rem;">
                        <i class="fas fa-envelope" style="color: #3b82f6;"></i>
                        <span>info@gradeportal.com</span>
                    </div>
                    <div style="display: flex; align-items: center; gap: 1rem; margin-bottom: 1rem;">
                        <i class="fas fa-map-marker-alt" style="color: #3b82f6;"></i>
                        <span>123 Education Street, Learning City, LC 12345</span>
                    </div>
                </div>
                <form id="contact-form">
                    <div class="form-group">
                        <label for="contact-name">Full Name</label>
                        <input type="text" id="contact-name" name="name" required>
                    </div>
                    <div class="form-group">
                        <label for="contact-email">Email Address</label>
                        <input type="email" id="contact-email" name="email" required>
                    </div>
                    <div class="form-group">
                        <label for="contact-subject">Subject</label>
                        <input type="text" id="contact-subject" name="subject" required>
                    </div>
                    <div class="form-group">
                        <label for="contact-message">Message</label>
                        <textarea id="contact-message" name="message" rows="4" placeholder="How can we help you?" required></textarea>
                    </div>
                    <button type="submit" class="btn btn-primary">Send Message</button>
                </form>
            </div>
        </div>
    </div>


</body>
</html>