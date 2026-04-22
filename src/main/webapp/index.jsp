<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover">
    <title>NexusShop | Modern E‑Commerce Experience</title>
    
    <!-- Google Fonts + Font Awesome -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,300;14..32,400;14..32,500;14..32,600;14..32,700&family=Poppins:wght@600;700;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        :root {
            --bg: #ffffff;
            --primary: #0a2540;
            --accent: #00d4ff;
            --accent-dark: #0099cc;
            --muted: #5e6f8d;
            --light-muted: #8a99b4;
            --card-bg: #ffffff;
            --surface: #f6f9fc;
            --border-light: #eef2f6;
            --shadow-sm: 0 8px 20px rgba(10, 37, 64, 0.04);
            --shadow-md: 0 12px 28px rgba(10, 37, 64, 0.08);
            --radius: 20px;
            --radius-md: 16px;
            --transition: all 0.2s ease;
        }

        body {
            font-family: 'Inter', system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif;
            background: var(--bg);
            color: var(--primary);
            line-height: 1.5;
            scroll-behavior: smooth;
        }

        .container {
            max-width: 1280px;
            margin: 0 auto;
            padding: 0 24px;
        }

        /* header */
        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 20px;
            padding: 16px 0;
            flex-wrap: wrap;
        }

        header {
            position: sticky;
            top: 0;
            z-index: 100;
            background: rgba(255, 255, 255, 0.96);
            backdrop-filter: blur(12px);
            border-bottom: 1px solid var(--border-light);
        }

        .brand {
            font-family: 'Poppins', sans-serif;
            font-size: 1.7rem;
            font-weight: 800;
            letter-spacing: -0.02em;
            background: linear-gradient(135deg, var(--primary) 0%, #1a4c7a 100%);
            background-clip: text;
            -webkit-background-clip: text;
            color: transparent;
        }
        .brand .accent {
            background: linear-gradient(135deg, var(--accent), #0077b6);
            background-clip: text;
            -webkit-background-clip: text;
            color: transparent;
        }

        nav ul {
            display: flex;
            gap: 8px;
            list-style: none;
        }
        nav ul li a {
            padding: 8px 16px;
            border-radius: 40px;
            font-weight: 500;
            transition: var(--transition);
            color: var(--primary);
        }
        nav ul li a:hover {
            background: var(--surface);
            color: var(--accent-dark);
        }

        .search-wrapper {
            display: flex;
            align-items: center;
            background: var(--surface);
            border-radius: 60px;
            padding: 6px 16px;
            gap: 8px;
            border: 1px solid transparent;
            transition: var(--transition);
        }
        .search-wrapper:focus-within {
            border-color: var(--accent);
            background: white;
            box-shadow: 0 0 0 3px rgba(0, 212, 255, 0.2);
        }
        .search-wrapper input {
            background: transparent;
            border: none;
            outline: none;
            font-size: 0.9rem;
            width: 200px;
        }
        .search-wrapper button {
            background: none;
            border: none;
            cursor: pointer;
            color: var(--muted);
            font-size: 1rem;
        }

        .header-actions {
            display: flex;
            align-items: center;
            gap: 20px;
        }
        .cart-icon {
            position: relative;
            font-size: 1.4rem;
        }
        .cart-count {
            position: absolute;
            top: -10px;
            right: -12px;
            background: var(--accent);
            color: #0a2540;
            font-weight: 800;
            font-size: 0.7rem;
            width: 20px;
            height: 20px;
            border-radius: 30px;
            display: flex;
            align-items: center;
            justify-content: center;
            box-shadow: 0 2px 6px rgba(0,0,0,0.1);
        }

        .mobile-toggle {
            display: none;
            background: none;
            border: none;
            font-size: 1.6rem;
            cursor: pointer;
        }

        /* hero */
        .hero {
            background: linear-gradient(110deg, #0a2540 0%, #0f2f4a 100%), url('https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1600&q=80') center/cover no-repeat;
            background-blend-mode: overlay;
            color: white;
            border-radius: 0 0 32px 32px;
            padding: 80px 20px;
            text-align: center;
        }
        .hero h1 {
            font-family: 'Poppins', sans-serif;
            font-size: 3.2rem;
            font-weight: 700;
            letter-spacing: -0.02em;
            max-width: 800px;
            margin: 0 auto 16px;
        }
        .btn-group {
            display: flex;
            gap: 16px;
            justify-content: center;
            flex-wrap: wrap;
            margin-top: 28px;
        }
        .btn {
            display: inline-flex;
            align-items: center;
            gap: 12px;
            padding: 12px 28px;
            border-radius: 60px;
            font-weight: 600;
            border: none;
            cursor: pointer;
            transition: 0.2s;
            font-size: 0.95rem;
        }
        .btn-primary {
            background: var(--accent);
            color: #0a2540;
            box-shadow: 0 4px 12px rgba(0,212,255,0.3);
        }
        .btn-primary:hover {
            background: #00c4f0;
            transform: translateY(-2px);
            box-shadow: 0 8px 20px rgba(0,212,255,0.4);
        }
        .btn-outline-light {
            background: transparent;
            border: 2px solid rgba(255,255,255,0.5);
            color: white;
        }
        .btn-outline-light:hover {
            background: rgba(255,255,255,0.1);
            border-color: white;
        }

        /* section titles */
        .section-header {
            text-align: center;
            margin-bottom: 40px;
        }
        .section-header h2 {
            font-size: 2.2rem;
            font-weight: 700;
            font-family: 'Poppins', sans-serif;
            margin-bottom: 8px;
        }
        .section-header p {
            color: var(--muted);
        }

        /* category grid modern */
        .categories-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
            gap: 24px;
        }
        .category-card {
            background: var(--surface);
            border-radius: 28px;
            padding: 24px 12px;
            text-align: center;
            transition: var(--transition);
            cursor: pointer;
            border: 1px solid transparent;
        }
        .category-card:hover {
            transform: translateY(-6px);
            background: white;
            border-color: var(--accent);
            box-shadow: var(--shadow-md);
        }
        .category-icon {
            font-size: 2.2rem;
            color: var(--accent-dark);
            margin-bottom: 12px;
        }
        .category-card h4 {
            font-weight: 700;
            margin-bottom: 4px;
        }

        /* product grid */
        .products-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(270px, 1fr));
            gap: 28px;
        }
        .product-card {
            background: var(--card-bg);
            border-radius: 24px;
            overflow: hidden;
            transition: var(--transition);
            box-shadow: var(--shadow-sm);
            border: 1px solid var(--border-light);
        }
        .product-card:hover {
            transform: translateY(-6px);
            box-shadow: var(--shadow-md);
        }
        .product-img {
            width: 100%;
            height: 240px;
            object-fit: cover;
            transition: transform 0.4s;
        }
        .product-card:hover .product-img {
            transform: scale(1.02);
        }
        .product-info {
            padding: 18px 16px 20px;
        }
        .product-title {
            font-weight: 700;
            font-size: 1.1rem;
            margin-bottom: 6px;
        }
        .product-category {
            font-size: 0.75rem;
            text-transform: uppercase;
            letter-spacing: 0.5px;
            color: var(--accent-dark);
            font-weight: 600;
        }
        .price-row {
            display: flex;
            align-items: baseline;
            gap: 10px;
            margin: 12px 0;
        }
        .current-price {
            font-size: 1.5rem;
            font-weight: 800;
            color: var(--primary);
        }
        .old-price {
            font-size: 0.9rem;
            color: var(--light-muted);
            text-decoration: line-through;
        }
        .rating {
            color: #ffb347;
            font-size: 0.85rem;
            margin-bottom: 14px;
        }
        .btn-add {
            width: 100%;
            background: var(--primary);
            color: white;
            border: none;
            padding: 12px;
            border-radius: 40px;
            font-weight: 600;
            cursor: pointer;
            transition: var(--transition);
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
        }
        .btn-add:hover {
            background: var(--accent-dark);
            gap: 12px;
        }

        /* flash sale */
        .flash-sale {
            background: linear-gradient(115deg, #0f2c3f 0%, #1b3a4f 100%);
            border-radius: 32px;
            display: flex;
            flex-wrap: wrap;
            overflow: hidden;
            margin-top: 20px;
        }
        .sale-img {
            flex: 1.2;
            min-height: 320px;
            background: url('https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1200&q=80') center/cover no-repeat;
        }
        .sale-content {
            flex: 1;
            padding: 40px 32px;
            color: white;
        }
        .sale-badge {
            background: #ff4d4d;
            display: inline-block;
            padding: 6px 14px;
            border-radius: 40px;
            font-weight: 700;
            font-size: 0.8rem;
            margin-bottom: 16px;
        }
        .timer-grid {
            display: flex;
            gap: 16px;
            margin: 24px 0;
            flex-wrap: wrap;
        }
        .timer-card {
            background: rgba(255,255,255,0.12);
            backdrop-filter: blur(4px);
            padding: 12px 16px;
            border-radius: 20px;
            min-width: 70px;
            text-align: center;
        }
        .timer-number {
            font-size: 1.8rem;
            font-weight: 800;
            line-height: 1;
        }

        /* testimonials */
        .testimonials-slider {
            display: flex;
            gap: 24px;
            overflow-x: auto;
            padding: 12px 4px 20px;
            scroll-snap-type: x mandatory;
        }
        .testimonial-card {
            min-width: 320px;
            background: white;
            border-radius: 28px;
            padding: 24px;
            box-shadow: var(--shadow-sm);
            border: 1px solid var(--border-light);
            scroll-snap-align: start;
        }
        .stars {
            color: #ffc107;
            margin-bottom: 12px;
        }
        .testimonial-text {
            font-style: italic;
            margin: 12px 0;
            color: #2c3e50;
        }

        /* newsletter */
        .newsletter-modern {
            background: linear-gradient(135deg, #eef2ff, #ffffff);
            border-radius: 48px;
            padding: 48px 32px;
            text-align: center;
            border: 1px solid rgba(0,212,255,0.2);
        }
        .newsletter-group {
            display: flex;
            justify-content: center;
            gap: 12px;
            flex-wrap: wrap;
            margin-top: 28px;
        }
        .newsletter-group input {
            padding: 14px 24px;
            border-radius: 60px;
            border: 1px solid #ddd;
            width: 300px;
            font-size: 0.9rem;
        }

        /* footer */
        .footer-modern {
            background: var(--primary);
            color: #eef2f6;
            border-radius: 32px 32px 0 0;
            padding: 48px 32px 24px;
            margin-top: 40px;
        }
        .footer-grid {
            display: flex;
            justify-content: space-between;
            flex-wrap: wrap;
            gap: 32px;
        }

        @media (max-width: 900px) {
            .main-nav {
                display: none;
            }
            .mobile-toggle {
                display: block;
            }
            .hero h1 {
                font-size: 2.2rem;
            }
            .products-grid {
                grid-template-columns: repeat(auto-fill, minmax(240px, 1fr));
            }
        }
        @media (max-width: 640px) {
            .search-wrapper input {
                width: 130px;
            }
            .timer-card {
                padding: 8px 12px;
                min-width: 60px;
            }
        }
        .toast-msg {
            position: fixed;
            bottom: 24px;
            right: 24px;
            background: #0a2540;
            color: white;
            padding: 12px 20px;
            border-radius: 60px;
            z-index: 200;
            font-weight: 500;
            box-shadow: 0 4px 12px rgba(0,0,0,0.2);
            animation: fadeInUp 0.3s ease;
        }
        @keyframes fadeInUp {
            from { opacity: 0; transform: translateY(20px);}
            to { opacity: 1; transform: translateY(0);}
        }
    </style>
</head>
<body>

<header>
    <div class="container header-inner">
        <div style="display: flex; align-items: center; gap: 20px;">
            <button class="mobile-toggle" id="mobileMenuToggle"><i class="fas fa-bars"></i></button>
            <div class="brand">Nexus<span class="accent">Shop</span></div>
        </div>

        <nav class="main-nav" id="desktopNav">
            <ul>
                <li><a href="#home">Home</a></li>
                <li><a href="#categories">Shop</a></li>
                <li><a href="#deals">Flash Sale</a></li>
                <li><a href="#testimonials">Reviews</a></li>
            </ul>
        </nav>

        <div style="display: flex; align-items: center; gap: 16px;">
            <div class="search-wrapper">
                <input type="text" id="searchInput" placeholder="Search products...">
                <button id="searchBtn"><i class="fas fa-search"></i></button>
            </div>
            <div class="header-actions">
                <a href="#" style="color: var(--primary);"><i class="far fa-heart"></i></a>
                <div class="cart-icon" id="cartIcon">
                    <i class="fas fa-shopping-bag"></i>
                    <span class="cart-count" id="cartCountDisplay">0</span>
                </div>
            </div>
        </div>
    </div>

    <!-- mobile menu panel -->
    <div id="mobileMenuPanel" style="display: none; background: white; border-top: 1px solid #eef2f6; padding: 16px 24px;">
        <ul style="list-style: none; display: flex; flex-direction: column; gap: 12px;">
            <li><a href="#home">Home</a></li>
            <li><a href="#categories">Categories</a></li>
            <li><a href="#deals">Deals</a></li>
            <li><a href="#testimonials">Testimonials</a></li>
        </ul>
    </div>
</header>

<main>
    <!-- Hero -->
    <section id="home" class="hero">
        <div class="container">
            <h1>Elevate Your Style & Tech</h1>
            <p style="max-width: 680px; margin: 0 auto;">Discover curated essentials — from flagship gadgets to timeless fashion. Flash sale live now.</p>
            <div class="btn-group">
                <button class="btn btn-primary" id="exploreBtn">Explore Collection <i class="fas fa-arrow-right"></i></button>
                <button class="btn btn-outline-light" id="dealScrollBtn">Flash Sale <i class="fas fa-bolt"></i></button>
            </div>
        </div>
    </section>

    <!-- Categories -->
    <section id="categories" class="container" style="padding: 64px 0 32px;">
        <div class="section-header">
            <h2>Shop by Category</h2>
            <p>Find exactly what you're looking for</p>
        </div>
        <div class="categories-grid" id="categoriesContainer"></div>
    </section>

    <!-- Products -->
    <section class="container" style="padding: 32px 0 64px;">
        <div class="section-header">
            <h2>Trending Now</h2>
            <p>Most loved picks this week</p>
        </div>
        <div class="products-grid" id="productsContainer"></div>
    </section>

    <!-- Flash Sale Deal -->
    <section id="deals" class="container" style="padding-bottom: 64px;">
        <div class="section-header">
            <h2>🔥 Flash Sale</h2>
            <p>Limited time. Unbeatable prices.</p>
        </div>
        <div class="flash-sale">
            <div class="sale-img"></div>
            <div class="sale-content">
                <div class="sale-badge"><i class="fas fa-clock"></i> LIMITED OFFER</div>
                <h2 style="font-size: 1.9rem;">MacBook Air M2</h2>
                <p style="opacity: 0.8; margin: 8px 0 16px;">Supercharged by M2 chip — slim, powerful, all-day battery.</p>
                <div class="timer-grid" id="dealTimer">
                    <div class="timer-card"><div class="timer-number" id="days">00</div><div>Days</div></div>
                    <div class="timer-card"><div class="timer-number" id="hours">00</div><div>Hrs</div></div>
                    <div class="timer-card"><div class="timer-number" id="minutes">00</div><div>Mins</div></div>
                    <div class="timer-card"><div class="timer-number" id="seconds">00</div><div>Sec</div></div>
                </div>
                <div style="display: flex; align-items: baseline; gap: 12px; margin: 16px 0;">
                    <span style="font-size: 2rem; font-weight: 800;">$999</span>
                    <span style="text-decoration: line-through; opacity: 0.7;">$1,299</span>
                    <span style="background: #ff4d4d; padding: 4px 10px; border-radius: 40px; font-size: 0.8rem;">-23%</span>
                </div>
                <button class="btn btn-primary" id="flashDealBtn" style="background: white; color: #0a2540;"><i class="fas fa-bolt"></i> Grab Deal Now</button>
            </div>
        </div>
    </section>

    <!-- Testimonials -->
    <section id="testimonials" class="container" style="padding: 24px 0 64px;">
        <div class="section-header">
            <h2>Customer Love</h2>
            <p>Real stories from our community</p>
        </div>
        <div class="testimonials-slider" id="testimonialList"></div>
    </section>

    <!-- Newsletter -->
    <section class="container" style="padding-bottom: 80px;">
        <div class="newsletter-modern">
            <h3 style="font-size: 1.8rem; font-weight: 700;">Join the inner circle</h3>
            <p style="color: var(--muted);">Get early access to drops and exclusive member deals</p>
            <div class="newsletter-group">
                <input type="email" id="newsEmail" placeholder="your@email.com">
                <button class="btn btn-primary" id="subscribeBtnNew">Subscribe <i class="fas fa-paper-plane"></i></button>
            </div>
            <div id="newsMsg" style="margin-top: 12px; font-size: 0.85rem;"></div>
        </div>
    </section>
</main>

<footer class="footer-modern">
    <div class="footer-grid container" style="max-width: 1280px; margin: 0 auto;">
        <div><div style="font-weight: 800; font-size: 1.4rem;">Nexus<span style="color: #00d4ff;">Shop</span></div><p style="margin-top: 8px; opacity: 0.7;">Minimalist & modern e‑commerce</p></div>
        <div><h4>Explore</h4><p style="opacity: 0.7;">New Arrivals<br>Best Sellers<br>Gift Cards</p></div>
        <div><h4>Support</h4><p style="opacity: 0.7;">FAQs<br>Shipping<br>Returns</p></div>
        <div><h4>Follow</h4><div style="display: flex; gap: 16px; font-size: 1.4rem;"><i class="fab fa-instagram"></i><i class="fab fa-twitter"></i><i class="fab fa-facebook"></i></div></div>
    </div>
    <div style="text-align: center; margin-top: 48px; opacity: 0.6; font-size: 0.8rem;">© 2025 NexusShop — Modern elegance</div>
</footer>

<script>
    // CATALOG DATA (fresh)
    const CATEGORIES_NEW = [
        { id: 'tech', name: 'Tech', icon: 'fa-microchip' },
        { id: 'audio', name: 'Audio', icon: 'fa-headphones' },
        { id: 'wearables', name: 'Wearables', icon: 'fa-apple-alt' },
        { id: 'fashion', name: 'Fashion', icon: 'fa-tshirt' },
        { id: 'footwear', name: 'Footwear', icon: 'fa-shoe-prints' },
        { id: 'accessories', name: 'Accessories', icon: 'fa-gem' }
    ];

    const PRODUCTS_NEW = [
        { id: 1, title: "iPhone 15 Pro", price: 1099, oldPrice: 1199, rating: 4.9, reviews: 234, img: "https://images.unsplash.com/photo-1695048133142-1a20484d2569?auto=format&fit=crop&w=600&q=80", category: "tech", badge: "Just dropped" },
        { id: 2, title: "Sony WH-1000XM5", price: 398, oldPrice: 499, rating: 4.8, reviews: 876, img: "https://images.unsplash.com/photo-1618366712010-f4ae9c647dcb?auto=format&fit=crop&w=600&q=80", category: "audio" },
        { id: 3, title: "Apple Watch Ultra 2", price: 729, rating: 4.9, reviews: 453, img: "https://images.unsplash.com/photo-1694189461416-7f7bbfb6e1b6?auto=format&fit=crop&w=600&q=80", category: "wearables", badge: "Hot" },
        { id: 4, title: "Essentials Hoodie", price: 89, oldPrice: 129, rating: 4.7, reviews: 312, img: "https://images.unsplash.com/photo-1556821840-3a63f95609a7?auto=format&fit=crop&w=600&q=80", category: "fashion" },
        { id: 5, title: "Nike Air Max Pulse", price: 149, rating: 4.6, reviews: 198, img: "https://images.unsplash.com/photo-1600185365926-3a2ce3cdb9eb?auto=format&fit=crop&w=600&q=80", category: "footwear" },
        { id: 6, title: "Minimalist Backpack", price: 69, oldPrice: 99, rating: 4.8, reviews: 423, img: "https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=600&q=80", category: "accessories" },
        { id: 7, title: "AirPods Pro 2", price: 239, oldPrice: 279, rating: 4.9, reviews: 1.2, img: "https://images.unsplash.com/photo-1600294037681-c80b4cb5b434?auto=format&fit=crop&w=600&q=80", category: "audio", badge: "Sale" }
    ];

    let cartCount = 0;
    const cartCountSpan = document.getElementById('cartCountDisplay');
    const productsGrid = document.getElementById('productsContainer');
    const categoriesGrid = document.getElementById('categoriesContainer');
    const searchInput = document.getElementById('searchInput');
    const searchBtn = document.getElementById('searchBtn');

    function showToast(message) {
        let toast = document.querySelector('.toast-msg');
        if(toast) toast.remove();
        let div = document.createElement('div');
        div.className = 'toast-msg';
        div.innerHTML = `<i class="fas fa-check-circle"></i> ${message}`;
        document.body.appendChild(div);
        setTimeout(() => div.remove(), 2200);
    }

    function updateCartUI() {
        cartCountSpan.textContent = cartCount;
    }

    function addToCart(productId) {
        const product = PRODUCTS_NEW.find(p => p.id === productId);
        if(product) {
            cartCount++;
            updateCartUI();
            showToast(`${product.title} added to bag`);
        }
    }

    function renderCategories() {
        categoriesGrid.innerHTML = CATEGORIES_NEW.map(cat => `
            <div class="category-card" data-cat="${cat.name.toLowerCase()}">
                <div class="category-icon"><i class="fas ${cat.icon}"></i></div>
                <h4>${cat.name}</h4>
                <small class="muted">Shop now →</small>
            </div>
        `).join('');
        document.querySelectorAll('.category-card').forEach(card => {
            card.addEventListener('click', (e) => {
                const categoryName = card.getAttribute('data-cat');
                searchInput.value = categoryName;
                filterProducts(categoryName);
                document.getElementById('productsContainer').scrollIntoView({ behavior: 'smooth', block: 'start' });
            });
        });
    }

    function filterProducts(query) {
        const term = query.trim().toLowerCase();
        if (!term) {
            renderProducts(PRODUCTS_NEW);
            return;
        }
        const filtered = PRODUCTS_NEW.filter(p => p.title.toLowerCase().includes(term) || p.category.toLowerCase().includes(term));
        renderProducts(filtered);
        if(filtered.length === 0) productsGrid.innerHTML = `<div style="grid-column:1/-1; text-align:center; padding:40px;">✨ No products found, try another keyword.</div>`;
    }

    function renderProducts(productsArray) {
        productsGrid.innerHTML = productsArray.map(p => {
            const ratingStars = '★'.repeat(Math.floor(p.rating)) + '☆'.repeat(5 - Math.floor(p.rating));
            return `
                <div class="product-card">
                    <img class="product-img" src="${p.img}" alt="${p.title}" loading="lazy">
                    <div class="product-info">
                        <div class="product-category">${p.category}</div>
                        <div class="product-title">${p.title}</div>
                        <div class="price-row">
                            <span class="current-price">$${p.price.toLocaleString()}</span>
                            ${p.oldPrice ? `<span class="old-price">$${p.oldPrice.toLocaleString()}</span>` : ''}
                        </div>
                        <div class="rating">${ratingStars} <span style="color:var(--muted);">(${p.reviews})</span></div>
                        <button class="btn-add" data-id="${p.id}"><i class="fas fa-shopping-bag"></i> Add to Cart</button>
                    </div>
                </div>
            `;
        }).join('');
        document.querySelectorAll('.btn-add').forEach(btn => {
            btn.addEventListener('click', (e) => {
                e.stopPropagation();
                const id = parseInt(btn.dataset.id);
                addToCart(id);
            });
        });
    }

    // Deal countdown: 1 day 5 hours from now (dynamic)
    function initCountdown() {
        const targetDate = new Date();
        targetDate.setDate(targetDate.getDate() + 1);
        targetDate.setHours(targetDate.getHours() + 5);
        function update() {
            const now = new Date();
            const diff = targetDate - now;
            if (diff <= 0) {
                document.getElementById('days').innerText = "00";
                document.getElementById('hours').innerText = "00";
                document.getElementById('minutes').innerText = "00";
                document.getElementById('seconds').innerText = "00";
                return;
            }
            const days = Math.floor(diff / (1000 * 60 * 60 * 24));
            const hrs = Math.floor((diff % (86400000)) / 3600000);
            const mins = Math.floor((diff % 3600000) / 60000);
            const secs = Math.floor((diff % 60000) / 1000);
            document.getElementById('days').innerText = days < 10 ? '0'+days : days;
            document.getElementById('hours').innerText = hrs < 10 ? '0'+hrs : hrs;
            document.getElementById('minutes').innerText = mins < 10 ? '0'+mins : mins;
            document.getElementById('seconds').innerText = secs < 10 ? '0'+secs : secs;
        }
        update();
        setInterval(update, 1000);
    }

    // Testimonials data
    const testimonialsData = [
        { name: "Sophia Chen", text: "Absolutely obsessed with the design and shipping speed. Will order again!", stars: 5, avatar: "https://randomuser.me/api/portraits/women/68.jpg" },
        { name: "Daniel Park", text: "Great quality, the MacBook deal was unreal. 10/10 experience.", stars: 5, avatar: "https://randomuser.me/api/portraits/men/32.jpg" },
        { name: "Olivia Martinez", text: "Customer service replied in minutes. My new go-to shop.", stars: 4, avatar: "https://randomuser.me/api/portraits/women/44.jpg" }
    ];
    function renderTestimonials() {
        const container = document.getElementById('testimonialList');
        container.innerHTML = testimonialsData.map(t => `
            <div class="testimonial-card">
                <div class="stars">${'★'.repeat(t.stars)}${'☆'.repeat(5-t.stars)}</div>
                <p class="testimonial-text">"${t.text}"</p>
                <div style="display:flex; align-items:center; gap:12px; margin-top: 16px;">
                    <img src="${t.avatar}" style="width:44px; height:44px; border-radius:60px; object-fit:cover;">
                    <strong>${t.name}</strong>
                </div>
            </div>
        `).join('');
    }

    // Newsletter subscription
    document.getElementById('subscribeBtnNew').addEventListener('click', () => {
        const email = document.getElementById('newsEmail').value.trim();
        const msgDiv = document.getElementById('newsMsg');
        if(!email || !email.includes('@')) {
            msgDiv.innerHTML = '<span style="color:#e07c7c;">Valid email required</span>';
            setTimeout(() => msgDiv.innerHTML = '', 2000);
            return;
        }
        msgDiv.innerHTML = '<span style="color:#28a745;">🎉 Subscribed! Enjoy exclusive deals.</span>';
        document.getElementById('newsEmail').value = '';
        setTimeout(() => msgDiv.innerHTML = '', 3000);
    });

    // UI Interactions
    document.getElementById('exploreBtn').addEventListener('click', () => document.getElementById('productsContainer').scrollIntoView({ behavior: 'smooth' }));
    document.getElementById('dealScrollBtn').addEventListener('click', () => document.getElementById('deals').scrollIntoView({ behavior: 'smooth' }));
    document.getElementById('flashDealBtn').addEventListener('click', () => { cartCount++; updateCartUI(); showToast("MacBook Air M2 added to cart!"); });
    searchBtn.addEventListener('click', () => filterProducts(searchInput.value));
    searchInput.addEventListener('keypress', (e) => { if(e.key === 'Enter') filterProducts(searchInput.value); });

    // Mobile menu toggle
    const toggleBtn = document.getElementById('mobileMenuToggle');
    const mobilePanel = document.getElementById('mobileMenuPanel');
    toggleBtn.addEventListener('click', () => {
        if(mobilePanel.style.display === 'none' || !mobilePanel.style.display) mobilePanel.style.display = 'block';
        else mobilePanel.style.display = 'none';
    });

    // Initialize all
    renderCategories();
    renderProducts(PRODUCTS_NEW);
    initCountdown();
    renderTestimonials();
    updateCartUI();
</script>
</body>
</html>
