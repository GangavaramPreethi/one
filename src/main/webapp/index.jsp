<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.5">
  <title>🌿 eco · user‑friendly shop</title>
  <!-- Font & icon library (Font Awesome) for clean UI -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: 'Inter', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif;
    }

    body {
      background: #f6f9fc;
      min-height: 100vh;
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
      padding: 2rem 1rem;
    }

    /* main card – soft, elevated, friendly */
    .shop-container {
      max-width: 1300px;
      width: 100%;
      background: #ffffff;
      border-radius: 2.5rem;
      box-shadow: 0 20px 40px -12px rgba(0, 20, 30, 0.15), 0 8px 24px -6px rgba(0, 0, 0, 0.05);
      padding: 2.5rem 2rem;
      transition: all 0.2s ease;
    }

    /* header with warm greeting */
    .shop-header {
      display: flex;
      flex-wrap: wrap;
      align-items: center;
      justify-content: space-between;
      margin-bottom: 2.5rem;
      gap: 1rem 0.5rem;
    }

    .shop-header h1 {
      font-size: 2rem;
      font-weight: 600;
      letter-spacing: -0.02em;
      color: #1a2e3f;
      display: flex;
      align-items: center;
      gap: 0.6rem;
    }

    .shop-header h1 i {
      color: #2f8f6d;
      font-size: 2rem;
    }

    .cart-summary {
      background: #eaf4ee;
      padding: 0.6rem 1.4rem 0.6rem 1.2rem;
      border-radius: 60px;
      display: flex;
      align-items: center;
      gap: 0.8rem;
      font-weight: 500;
      color: #1a3a2b;
      box-shadow: inset 0 1px 3px rgba(0,0,0,0.03);
      transition: 0.2s;
    }

    .cart-summary i {
      font-size: 1.3rem;
      color: #1f6e4a;
    }

    .cart-count {
      background: #1f6e4a;
      color: white;
      border-radius: 40px;
      padding: 0.1rem 0.7rem;
      font-size: 0.9rem;
      font-weight: 600;
      min-width: 1.8rem;
      text-align: center;
    }

    /* product grid – flexible, responsive, airy */
    .product-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
      gap: 2rem 1.5rem;
      margin: 1.2rem 0 0.8rem;
    }

    /* each product card – clean, friendly, with hover lift */
    .product-card {
      background: #ffffff;
      border-radius: 1.8rem;
      padding: 1.5rem 1rem 1.4rem;
      box-shadow: 0 4px 12px rgba(0, 20, 30, 0.04);
      border: 1px solid rgba(210, 225, 235, 0.4);
      transition: all 0.25s ease;
      display: flex;
      flex-direction: column;
      align-items: center;
      text-align: center;
      backdrop-filter: blur(2px);
    }

    .product-card:hover {
      transform: translateY(-6px);
      box-shadow: 0 16px 30px -10px rgba(30, 60, 70, 0.12);
      border-color: #bcd9d0;
      background: #fcfefd;
    }

    /* image placeholder – friendly icons */
    .product-image {
      font-size: 3.6rem;
      line-height: 1;
      margin-bottom: 0.6rem;
      background: #eef5f2;
      width: 90px;
      height: 90px;
      display: flex;
      align-items: center;
      justify-content: center;
      border-radius: 60px;
      color: #1d6b4a;
      transition: 0.2s;
      box-shadow: 0 2px 8px rgba(0, 0, 0, 0.02);
    }

    .product-card:hover .product-image {
      background: #ddebe4;
      transform: scale(1.02);
    }

    .product-name {
      font-size: 1.2rem;
      font-weight: 600;
      color: #1a2e3b;
      margin: 0.4rem 0 0.2rem;
      letter-spacing: -0.01em;
    }

    .product-price {
      font-size: 1.3rem;
      font-weight: 600;
      color: #1f5e44;
      margin: 0.15rem 0 0.8rem;
      background: #f0f7f2;
      padding: 0.1rem 1rem;
      border-radius: 40px;
      display: inline-block;
    }

    .product-description {
      font-size: 0.9rem;
      color: #4b5e69;
      line-height: 1.4;
      margin-bottom: 1rem;
      padding: 0 0.2rem;
      min-height: 2.8rem;
      font-weight: 400;
    }

    .add-btn {
      background: #1a3a2b;
      border: none;
      color: white;
      font-weight: 500;
      font-size: 1rem;
      padding: 0.6rem 1.8rem;
      border-radius: 60px;
      cursor: pointer;
      display: inline-flex;
      align-items: center;
      gap: 0.6rem;
      transition: all 0.2s ease;
      box-shadow: 0 4px 8px rgba(20, 60, 40, 0.08);
      border: 1px solid rgba(255, 255, 255, 0.1);
      letter-spacing: 0.3px;
      margin-top: 0.2rem;
    }

    .add-btn i {
      font-size: 0.95rem;
      transition: transform 0.2s;
    }

    .add-btn:hover {
      background: #0f2d1f;
      transform: scale(1.02);
      box-shadow: 0 8px 16px rgba(26, 58, 43, 0.2);
    }

    .add-btn:active {
      transform: scale(0.96);
    }

    .add-btn:focus-visible {
      outline: 3px solid #7bb79b;
      outline-offset: 2px;
    }

    /* feedback message – subtle & friendly */
    .feedback-area {
      margin-top: 2.5rem;
      display: flex;
      align-items: center;
      justify-content: center;
      flex-wrap: wrap;
      gap: 0.8rem 2rem;
      border-top: 1px solid rgba(180, 200, 195, 0.3);
      padding-top: 2rem;
    }

    .feedback-message {
      background: #ecf7f1;
      padding: 0.5rem 1.8rem;
      border-radius: 60px;
      font-size: 0.95rem;
      color: #1a452e;
      display: flex;
      align-items: center;
      gap: 0.7rem;
      box-shadow: 0 1px 4px rgba(0,0,0,0.02);
      font-weight: 450;
      transition: 0.2s;
      min-height: 3rem;
    }

    .feedback-message i {
      color: #2b7a57;
      font-size: 1.1rem;
    }

    .reset-cart-btn {
      background: transparent;
      border: 1px solid #c7d9d2;
      padding: 0.4rem 1.5rem;
      border-radius: 60px;
      color: #2b4d3d;
      font-weight: 450;
      font-size: 0.95rem;
      cursor: pointer;
      transition: 0.2s;
      display: inline-flex;
      align-items: center;
      gap: 0.5rem;
      background: #f6fbf9;
    }

    .reset-cart-btn:hover {
      background: #e2ede7;
      border-color: #9cb9ab;
      color: #0e2d1e;
    }

    .reset-cart-btn i {
      font-size: 0.9rem;
    }

    /* empty state / cart info */
    .empty-cart-message {
      color: #5b7570;
      font-weight: 400;
      font-size: 0.95rem;
    }

    /* responsive fine-tune */
    @media (max-width: 600px) {
      .shop-container {
        padding: 1.5rem 1rem;
        border-radius: 1.8rem;
      }
      .shop-header {
        flex-direction: column;
        align-items: flex-start;
        gap: 0.6rem;
      }
      .shop-header h1 {
        font-size: 1.7rem;
      }
      .product-grid {
        gap: 1.2rem;
      }
      .feedback-area {
        flex-direction: column;
        align-items: stretch;
      }
    }

    /* utility to hide/show */
    .hidden {
      display: none !important;
    }

    /* cart count animation */
    .cart-count.pop {
      animation: pop 0.2s ease-in-out;
    }
    @keyframes pop {
      0% { transform: scale(0.8); }
      80% { transform: scale(1.2); }
      100% { transform: scale(1); }
    }
  </style>
</head>
<body>

<div class="shop-container" role="main">

  <!-- header with cart summary -->
  <div class="shop-header">
    <h1>
      <i class="fas fa-leaf" aria-hidden="true"></i> 
      green&nbsp;market
    </h1>
    <div class="cart-summary" aria-label="Cart summary">
      <i class="fas fa-shopping-bag" aria-hidden="true"></i>
      <span>cart</span>
      <span class="cart-count" id="cartCount">0</span>
    </div>
  </div>

  <!-- product grid -->
  <div class="product-grid" id="productGrid">
    <!-- each product card will be injected via JS -->
  </div>

  <!-- feedback & actions -->
  <div class="feedback-area">
    <div class="feedback-message" id="feedbackMessage">
      <i class="fas fa-check-circle" aria-hidden="true"></i>
      <span id="feedbackText">✨ add your favorite items</span>
    </div>
    <button class="reset-cart-btn" id="resetCartBtn" aria-label="Reset cart">
      <i class="fas fa-undo-alt" aria-hidden="true"></i> reset cart
    </button>
  </div>
</div>

<script>
  (function() {
    "use strict";

    // ----- friendly product data (eco / user‑friendly vibes) -----
    const products = [
      { 
        id: 1, 
        name: 'Bamboo Mug', 
        price: 18.90, 
        description: 'Eco‑friendly, lightweight, & dishwasher safe.',
        icon: 'fa-mug-saucer'
      },
      { 
        id: 2, 
        name: 'Organic Cotton Tee', 
        price: 29.00, 
        description: 'Soft, fair‑trade, unisex fit. 100% organic.',
        icon: 'fa-shirt'
      },
      { 
        id: 3, 
        name: 'Reusable Tote', 
        price: 14.50, 
        description: 'Sturdy canvas, folds into pocket. Plastic‑free.',
        icon: 'fa-bag-shopping'
      },
      { 
        id: 4, 
        name: 'Beeswax Wraps', 
        price: 22.30, 
        description: 'Set of 3, washable, plastic‑free food storage.',
        icon: 'fa-seedling'
      },
      { 
        id: 5, 
        name: 'Cork Notebook', 
        price: 12.80, 
        description: 'Sustainably sourced cork cover, recycled paper.',
        icon: 'fa-book'
      },
      { 
        id: 6, 
        name: 'Bamboo Utensil Set', 
        price: 16.20, 
        description: 'Fork, knife, spoon + straw in travel pouch.',
        icon: 'fa-utensils'
      }
    ];

    // ----- state -----
    let cart = [];                 // store product objects (with quantity)
    const cartCountEl = document.getElementById('cartCount');
    const feedbackTextEl = document.getElementById('feedbackText');
    const feedbackIcon = document.querySelector('#feedbackMessage i');
    const productGrid = document.getElementById('productGrid');
    const resetBtn = document.getElementById('resetCartBtn');

    // ----- helper: update cart count & feedback -----
    function updateUI() {
      const totalItems = cart.reduce((sum, item) => sum + item.quantity, 0);
      cartCountEl.textContent = totalItems;

      // animate count (just a small touch)
      cartCountEl.classList.remove('pop');
      // force reflow for replay
      void cartCountEl.offsetWidth;
      cartCountEl.classList.add('pop');

      // update feedback message (user‑friendly)
      if (totalItems === 0) {
        feedbackTextEl.textContent = '✨ your cart is empty – pick something nice!';
        feedbackIcon.className = 'fas fa-hand-peace';
      } else if (totalItems === 1) {
        const itemName = cart[0].name;
        feedbackTextEl.textContent = `🛒 ${itemName} in your cart – great choice!`;
        feedbackIcon.className = 'fas fa-check-circle';
      } else {
        // show first item + total count
        const first = cart[0].name;
        const extra = totalItems - 1;
        feedbackTextEl.textContent = `🛍️ ${first} + ${extra} more item${extra > 1 ? 's' : ''} in cart`;
        feedbackIcon.className = 'fas fa-check-circle';
      }

      // re-render product cards to reflect "in cart" state (optional but nice)
      renderProducts();
    }

    // ----- add to cart -----
    function addToCart(productId) {
      const product = products.find(p => p.id === productId);
      if (!product) return;

      const existing = cart.find(item => item.id === productId);
      if (existing) {
        existing.quantity += 1;
      } else {
        cart.push({ ...product, quantity: 1 });
      }
      updateUI();

      // subtle feedback: flash product card (optional)
      const card = document.querySelector(`.product-card[data-id="${productId}"]`);
      if (card) {
        card.style.transition = 'background 0.15s';
        card.style.background = '#e3f2ec';
        setTimeout(() => { card.style.background = ''; }, 300);
      }
    }

    // ----- reset cart -----
    function resetCart() {
      cart = [];
      updateUI();
      // extra feedback
      feedbackTextEl.textContent = '🧹 cart cleared – start fresh!';
      feedbackIcon.className = 'fas fa-leaf';
      setTimeout(() => {
        // bring back normal message after 2s, but only if cart still empty
        if (cart.length === 0) {
          feedbackTextEl.textContent = '✨ add your favorite items';
          feedbackIcon.className = 'fas fa-check-circle';
        }
      }, 2000);
    }

    // ----- render product cards (from products array) -----
    function renderProducts() {
      // clear grid
      productGrid.innerHTML = '';

      products.forEach(product => {
        // check if product is in cart (for optional badge, we show quantity)
        const cartItem = cart.find(item => item.id === product.id);
        const inCartQty = cartItem ? cartItem.quantity : 0;

        // build card
        const card = document.createElement('div');
        card.className = 'product-card';
        card.setAttribute('data-id', product.id);

        // icon (font awesome)
        const iconHtml = `<i class="fas ${product.icon}" aria-hidden="true"></i>`;

        // description with possible "in cart" indicator
        let qtyIndicator = '';
        if (inCartQty > 0) {
          qtyIndicator = `<span style="font-size:0.75rem; background:#e3f0e9; padding:0.1rem 0.7rem; border-radius:40px; margin-left:0.3rem; color:#1a4d33; font-weight:500;">×${inCartQty}</span>`;
        }

        card.innerHTML = `
          <div class="product-image">${iconHtml}</div>
          <div class="product-name">${product.name} ${qtyIndicator}</div>
          <div class="product-price">€${product.price.toFixed(2)}</div>
          <div class="product-description">${product.description}</div>
          <button class="add-btn" data-id="${product.id}" aria-label="Add ${product.name} to cart">
            <i class="fas fa-plus-circle" aria-hidden="true"></i> add
          </button>
        `;

        productGrid.appendChild(card);

        // attach event listener to the button (delegation would also work)
        const btn = card.querySelector('.add-btn');
        btn.addEventListener('click', function(e) {
          e.stopPropagation();
          const id = parseInt(this.getAttribute('data-id'), 10);
          addToCart(id);
        });
      });
    }

    // ----- reset button event -----
    resetBtn.addEventListener('click', resetCart);

    // ----- initial render & UI -----
    renderProducts();
    updateUI();

    // (optional) demo: pre-fill cart with one item for friendliness? 
    // but we want it empty so user starts fresh. (we keep empty)

    // keyboard / accessibility: product cards can be focused
    // the add button is already focusable.
  })();
</script>
</body>
</html>
