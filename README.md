# 💰 Monnage

**Your Personal Income & Expense Tracker**

A modern, feature-rich personal finance management application built with a robust tech stack. Track your wallets across multiple currencies, log transactions, manage budgets with rollover support, and automate recurring expenses—all with a beautiful, intuitive user interface.

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![Status](https://img.shields.io/badge/Status-Active-brightgreen)]()
[![TypeScript](https://img.shields.io/badge/TypeScript-3178C6?style=flat-square&logo=typescript&logoColor=white)]()
[![PHP](https://img.shields.io/badge/PHP-777BB4?style=flat-square&logo=php&logoColor=white)]()

---

## ✨ Features

### 💳 Wallet Management
- **Multiple Wallets** — Create and manage unlimited wallets per user, each with its own currency and status
- **Active/Archived Status** — Archive wallets to preserve history while preventing new transactions
- **Real-time Balance Tracking** — View wallet balances at a glance across all currencies

### 🌍 Multi-Currency Support
- **Currency-Aware** — Wallets, transactions, transfers, and budgets all support multiple currencies
- **Cross-Currency Transfers** — Move money between wallets with automatic exchange rate handling
- **Smart Grouping** — Totals are intelligently grouped by currency for accurate reporting

### 📊 Transaction Management
- **Income & Expense Tracking** — Log all financial activities with optional category assignments
- **Advanced Filtering** — Filter transactions by date range, category, wallet, and amount
- **Pagination Support** — Efficiently browse large transaction histories

### 🔄 Wallet Transfers
- **Peer Transfers** — Move money between your own wallets instantly
- **Cross-Currency Support** — Handle currency conversions seamlessly
- **Complete History** — All transfers are tracked and auditable

### ⏰ Recurring Transactions
- **Smart Scheduling** — Define rules once (amount, wallet, category, frequency)
- **Auto-Generation** — System automatically generates transactions on schedule
- **Catch-Up Logic** — Never miss a payment—the scheduler catches up on missed occurrences
- **Flexible Frequencies** — Support for daily, weekly, bi-weekly, monthly, and yearly recurring transactions

### 💡 Budget Management
- **Monthly Category Budgets** — Set spending limits per category
- **Rollover Support** — Carry unused or overspent amounts to the next month
- **Cross-Category Cap** — Define an overall monthly spending ceiling
- **Visual Progress** — Monitor spending vs. budget at a glance
- **Smart Alerts** — Get notified when approaching budget limits

### 🔐 Authentication & Security
- **Email/Password Authentication** — Secure login via Laravel Fortify
- **Two-Factor Authentication (2FA)** — Extra layer of security for your account
- **Passkey Support** — Modern passwordless authentication
- **Google OAuth** — Sign in or sign up with Google
- **Account Linking** — Link Google to existing accounts from Settings

---

## 🛠️ Tech Stack

### Backend
<img src="https://img.shields.io/badge/Laravel%2013-FF2D20?style=for-the-badge&logo=laravel&logoColor=white" alt="Laravel" height="30" />
<img src="https://img.shields.io/badge/PHP%208.3%2B-777BB4?style=for-the-badge&logo=php&logoColor=white" alt="PHP" height="30" />
<img src="https://img.shields.io/badge/Fortify-FF2D20?style=for-the-badge&logo=laravel&logoColor=white" alt="Fortify" height="30" />
<img src="https://img.shields.io/badge/Socialite-FF2D20?style=for-the-badge&logo=laravel&logoColor=white" alt="Socialite" height="30" />

- **Framework:** Laravel 13 — modern PHP web framework
- **Authentication:** Laravel Fortify — robust auth scaffolding with 2FA and passkeys
- **OAuth:** Laravel Socialite — Google OAuth integration
- **Routing:** Laravel Wayfinder — typed route/action helpers generated from PHP routes
- **Database:** SQLite (default) — portable to MySQL/PostgreSQL

### Frontend
<img src="https://img.shields.io/badge/React%2019-61DAFB?style=for-the-badge&logo=react&logoColor=black" alt="React" height="30" />
<img src="https://img.shields.io/badge/TypeScript-3178C6?style=for-the-badge&logo=typescript&logoColor=white" alt="TypeScript" height="30" />
<img src="https://img.shields.io/badge/Inertia%20JS-523E63?style=for-the-badge&logo=inertia&logoColor=white" alt="Inertia.js" height="30" />
<img src="https://img.shields.io/badge/Tailwind%20CSS%20v4-06B6D4?style=for-the-badge&logo=tailwindcss&logoColor=white" alt="Tailwind CSS" height="30" />
<img src="https://img.shields.io/badge/shadcn/ui-000000?style=for-the-badge&logo=shadcnui&logoColor=white" alt="shadcn/ui" height="30" />

- **UI Framework:** React 19 — declarative UI with TypeScript
- **Language:** TypeScript — type-safe JavaScript
- **Bridge:** Inertia.js 3 — seamless client-side routing without building an API
- **Styling:** Tailwind CSS v4 — utility-first CSS framework
- **Components:** shadcn/ui — reusable, customizable component library

### Development
<img src="https://img.shields.io/badge/Node.js-339933?style=for-the-badge&logo=node.js&logoColor=white" alt="Node.js" height="30" />
<img src="https://img.shields.io/badge/npm%20|%20pnpm-CB3837?style=for-the-badge&logo=npm&logoColor=white" alt="npm/pnpm" height="30" />
<img src="https://img.shields.io/badge/Composer-885630?style=for-the-badge&logo=composer&logoColor=white" alt="Composer" height="30" />

- **Package Managers:** npm or pnpm for Node.js dependencies
- **Dependency Management:** Composer for PHP packages

---

## 📋 Prerequisites

Before you begin, ensure you have the following installed on your system:

- **PHP** `^8.3` — Latest stable PHP version
- **Composer** — PHP package manager
- **Node.js** — JavaScript runtime (LTS version recommended)
- **npm** or **pnpm** — Node.js package manager
- **Database** — SQLite (default, no setup needed) or MySQL/PostgreSQL

---

## 🚀 Quick Start

### 1. Clone the Repository
```bash
git clone https://github.com/adisalafudin-dev/monnage.git
cd monnage
```

### 2. Install Dependencies
```bash
# Install PHP dependencies
composer install

# Install Node.js dependencies
npm install
# or if using pnpm:
pnpm install
```

### 3. Environment Setup
```bash
# Copy the example environment file
cp .env.example .env

# Generate Laravel application key
php artisan key:generate
```

### 4. Database Setup
```bash
# Create SQLite database file (if using SQLite)
touch database/database.sqlite

# Run migrations
php artisan migrate
```

### 5. Start Development Servers

**Terminal 1 — Backend Server:**
```bash
php artisan serve
```
The backend will be available at `http://localhost:8000`

**Terminal 2 — Frontend Build (Development):**
```bash
npm run dev
# or pnpm run dev
```

Visit `http://localhost:8000` in your browser and start tracking your finances!

---

## 🔑 Google OAuth Setup (Optional)

To enable "Sign in with Google" and "Sign up with Google" features:

1. Go to [Google Cloud Console](https://console.cloud.google.com/apis/credentials)
2. Create OAuth 2.0 credentials (Web application)
3. Add authorized redirect URIs:
   - `http://localhost:8000/auth/google/callback` (development)
   - `https://yourdomain.com/auth/google/callback` (production)
4. Add the credentials to your `.env` file:
   ```env
   GOOGLE_CLIENT_ID=your_client_id.apps.googleusercontent.com
   GOOGLE_CLIENT_SECRET=your_client_secret
   ```

---

## 📦 Project Structure

```
monnage/
├── app/                    # Laravel application code
│   ├── Http/              # Controllers, requests, middleware
│   └── Models/            # Eloquent models
├── database/              # Migrations and seeds
├── resources/             # Frontend code
│   ├── js/               # TypeScript/React components
│   └── css/              # Tailwind CSS styles
├── routes/               # Application routes
├── public/               # Public assets
└── storage/              # Application storage (logs, uploads)
```

---

## 🧪 Testing

```bash
# Run PHP tests
php artisan test

# Run with coverage
php artisan test --coverage
```

---

## 📝 Environment Configuration

Key environment variables in `.env`:

```env
APP_ENV=local
APP_DEBUG=true
APP_URL=http://localhost:8000

DB_CONNECTION=sqlite
# For MySQL: DB_CONNECTION=mysql

GOOGLE_CLIENT_ID=
GOOGLE_CLIENT_SECRET=
```

---

## 🤝 Contributing

Contributions are welcome! To contribute:

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

---

## 📄 License

This project is licensed under the MIT License — see the [LICENSE](LICENSE) file for details.

---

## 🐛 Issues & Support

Encountered a bug or have a feature request? Please [open an issue](https://github.com/adisalafudin-dev/monnage/issues) on GitHub.

---

## 👨‍💻 Author

**Adi Salafudin**
- GitHub: [@adisalafudin-dev](https://github.com/adisalafudin-dev)
- Project: [monnage](https://github.com/adisalafudin-dev/monnage)

---

## 🎉 Acknowledgments

- [Laravel](https://laravel.com) — for the amazing framework
- [React](https://react.dev) — for the UI library
- [Inertia.js](https://inertiajs.com) — for seamless client-side routing
- [Tailwind CSS](https://tailwindcss.com) — for utility-first CSS
- [shadcn/ui](https://ui.shadcn.com) — for beautiful components

---

**Happy tracking! 📊💸**
