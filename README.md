# BlockAid - Decentralized Aid Platform

![BlockAid](https://img.shields.io/badge/Blockchain-Web3-blue)
![React](https://img.shields.io/badge/React-18.2.0-61dafb)
![Tailwind](https://img.shields.io/badge/Tailwind-CSS-38b2ac)
![Vite](https://img.shields.io/badge/Vite-4.4.5-646CFF)
![License](https://img.shields.io/badge/License-MIT-green)

## 🚀 Quick Start

### Prerequisites
- Node.js 16.0.0 or higher
- npm or yarn
- Modern browser with MetaMask extension


### 📖 Table of Contents
    Overview

    Features

    Project Structure

    Technology Stack

    Installation Guide

    Configuration

    Available Scripts

    Components

    Services

    Web3 Integration

    Contributing

    Support

    License
### 🌟 Overview
BlockAid is a decentralized platform that leverages blockchain technology to create transparent, secure, and efficient aid distribution systems. Built on Ethereum, it enables donors to contribute directly to verified aid requests while ensuring complete transparency in fund allocation and utilization.
### Core Capabilities

    ✅ Wallet connection and management (MetaMask)

    ✅ Aid request browsing and display

    ✅ Real-time donation progress tracking

    ✅ Responsive design with Tailwind CSS

    ✅ Mock data integration (ready for Web3)

    ✅ Progress visualization and status tracking


### ✨ Features
## Core Functionality

    Transparent Donations: Every transaction is recorded on the blockchain

    Smart Contract Integration: Automated fund distribution and verification

    Real-time Tracking: Monitor donation progress and fund utilization

    Wallet Integration: MetaMask and Web3 wallet support

    Multi-category Aid: Support for medical, education, disaster relief, and community projects

## User Experience

    Responsive Design: Optimized for desktop and mobile devices

    Intuitive Dashboard: Clean interface for browsing aid requests

    Progress Visualization: Visual progress bars and status indicators

    Secure Authentication: Web3 wallet-based user authentication

    Real-time Statistics: Live updates on campaign progress

## 🏗️ Project Structure
blockaid-ui/
├── public/                 # Static assets
├── src/
│   ├── assets/            # Images, icons, fonts
│   ├── components/        # Reusable React components
│   │   └── AidCard.js    # Aid request display component
│   ├── pages/            # Page components
│   │   └── Dashboard.js  # Main dashboard page
│   ├── services/         # API and external services
│   │   └── aidService.js # Aid-related API calls
│   ├── web3/            # Blockchain interactions
│   │   └── contract.js  # Web3 contract configuration
│   ├── App.js           # Main App component
│   ├── index.css        # Global styles
│   └── index.js         # Application entry point
├── package.json
├── tailwind.config.js   # Tailwind CSS configuration
├── vite.config.js       # Vite build configuration
├── postcss.config.js    # PostCSS configuration
└── README.md
## 🛠️ Technology Stack
### Frontend

    React 18 - UI library with hooks

    Vite - Build tool and dev server

    Tailwind CSS - Utility-first CSS framework

    Axios - HTTP client for API requests

### Blockchain

    Web3.js 4.2.0 - Ethereum JavaScript API

    MetaMask - Wallet integration

    Ethereum - Blockchain network

### Development

    ESLint - Code linting

    PostCSS - CSS processing

    Git - Version control

### 📥 Installation Guide
```bash
# Clone the repository
git clone https://github.com/your-username/blockaid-ui.git
cd blockaid-ui

# Install dependencies
npm install

# Start development server
npm run dev```

