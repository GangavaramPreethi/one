<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>🌱 Plantish · plant‑based market</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" />
  <style>
    /* ── reset & base ── */
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      font-family: 'Segoe UI', system-ui, -apple-system, sans-serif;
      background: linear-gradient(145deg, #f0f9f4 0%, #e6f2ec 100%);
      min-height: 100vh;
      display: flex;
      align-items: center;
      justify-content: center;
      padding: 2rem 1rem;
    }

    /* ── main card – organic, fresh, playful ── */
    .plant-shop {
      max-width: 1280px;
      width: 100%;
      background: rgba(255, 255, 255, 0.70);
      backdrop-filter: blur(12px);
      -webkit-backdrop-filter: blur(12px);
      border-radius: 3.5rem;
      padding: 2.5rem 2.2rem;
      box-shadow: 0 30px 60px -20px rgba(30, 60, 40, 0.25),
                  0 10px 30px -10px rgba(0, 20, 10, 0.08);
      border: 1px solid rgba(180, 210, 190, 0.25);
      transition: 0.3s;
    }

    /* ── header – vibrant & friendly ── */
    .header-row {
      display: flex;
      flex-wrap: wrap;
      align-items: center;
      justify-content: space-between;
      margin-bottom: 2.8rem;
      gap: 0.8rem 1.5rem;
    }

    .brand {
      display: flex;
      align-items: center;
      gap: 0.75rem;
    }

    .brand i {
      font-size: 2.6rem;
      color: #2b7a4b;
      background: #ddf0e4;
      padding: 0.4rem;
      border-radius: 60px;
      box-shadow: 0 4px 8px rgba(30, 80, 50, 0.06);
    }

    .brand h1 {
      font-size: 2.2rem;
      font-weight: 700;
      letter-spacing: -0.02em;
      color: #1d3a2a;
    }

    .brand span {
      font-weight: 300;
      color: #3e6d53;
      margin-left: 0.2rem;
    }

    .cart-pill {
      background: #d8eee2;
      padding: 0.5rem 1.6rem 0.5rem 1.4rem;
      border-radius: 80px;
      display: flex;
      align-items: center;
      gap: 0.9rem;
      font-weight: 600;
      color: #14442b;
      border: 1px solid rgba(80, 140, 110, 0.15);
      box-shadow: 0 2px 8px rgba(0,0,0,0.02);
      transition: 0.2s;
    }

    .cart-pill i {
      font-size: 1.3rem;
      color: #1d6a41;
    }

    .cart-badge {
      background: #1e6a3e;
      color: white;
      border-radius: 40px;
      padding: 0.05rem 0.8rem;
      font-size: 1rem;
      font-weight: 600;
      min-width: 2rem;
      text-align: center;
    }

    /* ── grid – plants with personality ── */
    .plant-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
      gap: 2rem 1.6rem;
      margin: 1.5rem 0 1.8rem;
    }

    /* ── plant card – charming, earthy, interactive ── */
    .plant-card {
      background: rgba(255, 255, 255, 0.8);
      backdrop-filter: blur(4px);
      -webkit-backdrop-filter: blur(4px);
      border-radius: 2.2rem;
      padding: 1.8rem 0.8rem 1.6rem;
      border: 1px solid rgba(160, 200, 175, 0.25);
      box-shadow: 0 6px 18px rgba(40, 80, 60, 0.04);
      transition: all 0.3s cubic-bezier(0.15, 0.75, 0.4, 1);
      display: flex;
      flex-direction: column;
      align-items: center;
      text-align: center;
      cursor: default;
      position: relative;
    }

    .plant-card:hover {
      transform: translateY(-10px) scale(1.01);
      background: rgba(255, 255, 255, 0.92);
      border-color: #8dc0a6;
      box-shadow: 0 24px 40px -16px rgba(30, 80, 50, 0.18);
    }

    /* emoji / icon circle */
    .plant-icon {
      font-size: 4rem;
      line-height: 1;
      margin-bottom: 0.6rem;
      background: #e3f3ea;
      width: 100px;
      height: 100px;
      display: flex;
      align-items: center;
      justify-content: center;
      border-radius: 50%;
      box-shadow: inset 0 -4px 0 rgba(0,0,0,0.02), 0 8px 18px rgba(40, 100, 70, 0.06);
      transition: 0.3s;
    }

    .plant-card:hover .plant-icon {
      background: #d2ecdd;
      transform: rotate(4deg) scale(1.04);
    }

    .plant-name {
      font-size: 1.3rem;
      font-weight: 700;
      color: #173b27;
      margin: 0.3rem 0 0.1rem;
      letter-spacing: -0.01em;
      display: flex;
      align-items: center;
      gap: 0.3rem;
      flex-wrap: wrap;
      justify-content: center;
    }

    .qty-badge {
      font-size: 0.7rem;
      background: #b8dac8;
      padding: 0.1rem 0.6rem;
      border-radius: 30px;
      font-weight: 600;
      color: #0c3922;
    }

    .plant-price {
      font-size: 1.4rem;
      font-weight: 700;
      color: #1a5838;
      background: #dff0e6;
      padding: 0.1rem 1.2rem;
      border-radius: 60px;
      margin: 0.2rem 0 0.5rem;
      display: inline-block;
      letter-spacing: 0.3px;
    }

    .plant-desc {
      font-size: 0.88rem;
      color: #3f5f4e;
      line-height: 1.4;
      padding: 0 0.4rem;
      min-height: 2.8rem;
      font-weight: 400;
      margin-bottom: 0.6rem;
    }

    /* ── add button – juicy & inviting ── */
    .add-btn {
      background: #1c4f33;
      border: none;
      color: white;
      font-weight: 600;
      font-size: 1rem;
      padding: 0.65rem 2rem;
      border-radius: 80px;
      cursor: pointer;
      display: inline-flex;
      align-items: center;
      gap: 0.7rem;
      transition: all 0.2s ease;
      box-shadow: 0 6px 14px rgba(30, 80, 50, 0.15);
      border: 1px solid rgba(255,255,255,0.1);
      margin-top: 0.2rem;
      letter-spacing: 0.3px;
    }

    .add-btn i {
      font-size: 1rem;
      transition: transform 0.25s;
    }

    .add-btn:hover {
      background: #0f3a24;
      transform: scale(1.04) translateY(-2px);
      box-shadow: 0 12px 24px rgba(20, 70, 40, 0.2);
    }

    .add-btn:active {
      transform: scale(0.94);
    }

    .add-btn:focus-visible {
      outline: 3px solid #7bc09b;
      outline-offset: 3px;
    }

    /* ── footer – feedback & reset ── */
    .action-bar {
      margin-top: 2.8rem;
      display: flex;
      flex-wrap: wrap;
      align-items: center;
      justify-content: center;
      gap: 1rem 2.5rem;
      padding-top: 2rem;
      border-top: 2px dashed rgba(100, 160, 130, 0.2);
    }

    .feedback-bubble {
      background: #d9efe2;
      padding: 0.6rem 2rem;
      border-radius: 80px;
      font-size: 1rem;
      color: #16432b;
      display: flex;
      align-items: center;
      gap: 0.8rem;
      font-weight: 450;
      box-shadow: inset 0 1px 4px rgba(0,0,0,0.02);
      min-height: 3.2rem;
      backdrop-filter: blur(4px);
    }

    .feedback-bubble i {
      font-size: 1.2rem;
      color: #1b7547;
    }

    .reset-btn {
      background: transparent;
      border: 1.5px solid #b2d2c0;
      padding: 0.45rem 1.8rem;
      border-radius: 80px;
      color: #1f4d34;
      font-weight: 500;
      font-size: 0.95rem;
      cursor: pointer;
      transition: 0.2s;
      display: inline-flex;
      align-items: center;
      gap: 0.6rem;
      background: rgba(255,255,255,0.3);
      backdrop-filter: blur(4px);
    }

    .reset-btn:hover {
      background: #d2ecdd;
      border-color: #6ea889;
      color: #0b311e;
      transform: scale(1.02);
    }

    /* ── responsive ── */
    @media (max-width: 640px) {
      .plant-shop {
        padding: 1.6rem 1rem;
        border-radius: 2.5rem;
      }
      .brand h1 {
        font-size: 1.7rem;
      }
      .plant-grid {
        gap: 1.4rem;
      }
      .action-bar {
        flex-direction: column;
        align-items: stretch;
      }
      .feedback-bubble {
        justify-content: center;
      }
    }

    /* tiny helper */
    .hidden { display: none !important; }

    /* cart badge pulse */
    .cart-badge.pop {
      animation: pop 0.25s ease;
    }
    @keyframes pop {
      0% { transform: scale(0.7); }
      70% { transform: scale(1.25); }
      100% { transform: scale(1); }
    }
  </style>
</head>
<body>

<div class="plant-shop" role="main">

  <!-- header -->
  <div class="header-row">
    <div class="brand">
      <i class="fas fa-seedling" aria-hidden="true"></i>
      <h1>plantish<span>·market</span></h1>
    </div>
    <div class="cart-pill">
      <i class="fas fa-shopping-basket" aria-hidden="true"></i>
      <span>cart</span>
      <span class="cart-badge" id="cartCount">0</span>
    </div>
  </div>

  <!-- plant grid -->
  <div class="plant-grid" id="plantGrid"></div>

  <!-- feedback + reset -->
  <div class="action-bar">
    <div class="feedback-bubble" id="feedbackBubble">
      <i class="fas fa-spa" aria-hidden="true"></i>
      <span id="feedbackText">🌿 ready to grow your cart?</span>
    </div>
    <button class="reset-btn" id="resetCartBtn">
      <i class="fas fa-rotate-left" aria-hidden="true"></i> reset
    </button>
  </div>
</div>

<script>
  (function() {
    "use strict";

    // ── plant catalog – emoji + friendly names ──
    const plants = [
      { id: 1, name: 'Aloe Vera', price: 12.90, desc: 'Soothing gel, easy care, air purifier.', emoji: '🌿' },
      { id: 2, name: 'Monstera', price: 24.50, desc: 'Iconic split leaves, tropical vibes.', emoji: '🪴' },
      { id: 3, name: 'Snake Plant', price: 18.20, desc: 'Nearly indestructible, perfect for beginners.', emoji: '🐍' },
      { id: 4, name: 'Pothos', price: 14.00, desc: 'Trailing beauty, thrives in low light.', emoji: '🌱' },
      { id: 5, name: 'Fiddle Leaf', price: 34.90, desc: 'Dramatic large leaves, statement piece.', emoji: '🎻' },
      { id: 6, name: 'String of Pearls', price: 19.80, desc: 'Delicate trailing beads, whimsical.', emoji: '📿' }
    ];

    // ── state ──
    let cart = [];
    const cartCountEl = document.getElementById('cartCount');
    const feedbackTextEl = document.getElementById('feedbackText');
    const feedbackIcon = document.querySelector('#feedbackBubble i');
    const plantGrid = document.getElementById('plantGrid');
    const resetBtn = document.getElementById('resetCartBtn');

    // ── helpers ──
    function updateUI() {
      const total = cart.reduce((sum, item) => sum + item.quantity, 0);
      cartCountEl.textContent = total;

      // pop animation
      cartCountEl.classList.remove('pop');
      void cartCountEl.offsetWidth;
      cartCountEl.classList.add('pop');

      // feedback with personality
      if (total === 0) {
        feedbackTextEl.textContent = '🌿 ready to grow your cart?';
        feedbackIcon.className = 'fas fa-spa';
      } else if (total === 1) {
        const name = cart[0].name;
        feedbackTextEl.textContent = `🌱 ${name} – great pick!`;
        feedbackIcon.className = 'fas fa-leaf';
      } else {
        const first = cart[0].name;
        const rest = total - 1;
        feedbackTextEl.textContent = `🌳 ${first} + ${rest} more plant${rest > 1 ? 's' : ''} in your basket`;
        feedbackIcon.className = 'fas fa-seedling';
      }

      renderPlants();
    }

    // ── add to cart ──
    function addPlant(plantId) {
      const plant = plants.find(p => p.id === plantId);
      if (!plant) return;

      const existing = cart.find(item => item.id === plantId);
      if (existing) {
        existing.quantity += 1;
      } else {
        cart.push({ ...plant, quantity: 1 });
      }

      updateUI();

      // flash card feedback
      const card = document.querySelector(`.plant-card[data-id="${plantId}"]`);
      if (card) {
        card.style.transition = 'background 0.2s';
        card.style.background = '#d4eee1';
        setTimeout(() => { card.style.background = ''; }, 350);
      }
    }

    // ── reset ──
    function resetCart() {
      cart = [];
      updateUI();
      feedbackTextEl.textContent = '🧹 cart cleared – time for new greens!';
      feedbackIcon.className = 'fas fa-seedling';
      setTimeout(() => {
        if (cart.length === 0) {
          feedbackTextEl.textContent = '🌿 ready to grow your cart?';
          feedbackIcon.className = 'fas fa-spa';
        }
      }, 2200);
    }

    // ── render plant cards ──
    function renderPlants() {
      plantGrid.innerHTML = '';

      plants.forEach(plant => {
        const cartItem = cart.find(item => item.id === plant.id);
        const qty = cartItem ? cartItem.quantity : 0;

        const card = document.createElement('div');
        card.className = 'plant-card';
        card.setAttribute('data-id', plant.id);

        let qtyBadge = '';
        if (qty > 0) {
          qtyBadge = `<span class="qty-badge">×${qty}</span>`;
        }

        card.innerHTML = `
          <div class="plant-icon">${plant.emoji}</div>
          <div class="plant-name">
            ${plant.name} ${qtyBadge}
          </div>
          <div class="plant-price">€${plant.price.toFixed(2)}</div>
          <div class="plant-desc">${plant.desc}</div>
          <button class="add-btn" data-id="${plant.id}" aria-label="Add ${plant.name}">
            <i class="fas fa-plus-circle" aria-hidden="true"></i> add
          </button>
        `;

        plantGrid.appendChild(card);

        const btn = card.querySelector('.add-btn');
        btn.addEventListener('click', function(e) {
          e.stopPropagation();
          const id = parseInt(this.getAttribute('data-id'), 10);
          addPlant(id);
        });
      });
    }

    // ── event listeners ──
    resetBtn.addEventListener('click', resetCart);

    // ── init ──
    renderPlants();
    updateUI();

    // optional: pre‑fill with one item for demo? 
    // we leave empty for clean start.

  })();
</script>
</body>
</html>
