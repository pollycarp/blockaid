# BlockAid - Decentralized Aid Platform

![BlockAid](https://img.shields.io/badge/Blockchain-Web3-blue)
![React](https://img.shields.io/badge/React-18.2.0-61dafb)
![Tailwind](https://img.shields.io/badge/Tailwind-CSS-38b2ac)
![License](https://img.shields.io/badge/License-MIT-green)

## Version Information
- **Current Version**: 1.0.0
- **Release Date**: December 2024
- **React Version**: 18.2.0
- **Web3.js Version**: 4.2.0
- **Node.js Requirement**: 16.0.0+

## Table of Contents
- [Overview](#overview)
- [Features](#features)
- [Quick Start](#quick-start)
- [Installation Guide](#installation-guide)
- [Project Structure](#project-structure)
- [Technology Stack](#technology-stack)
- [Configuration](#configuration)
- [API Documentation](#api-documentation)
- [Component Reference](#component-reference)
- [Available Scripts](#available-scripts)
- [Troubleshooting](#troubleshooting)
- [Contributing](#contributing)
- [Support](#support)
- [License](#license)

## Overview

BlockAid is a decentralized platform that leverages blockchain technology to create transparent, secure, and efficient aid distribution systems. Built on Ethereum, it enables donors to contribute directly to verified aid requests while ensuring complete transparency in fund allocation and utilization.

### Core Capabilities
- ✅ Wallet connection and management
- ✅ Aid request browsing and display
- ✅ Real-time donation progress tracking
- ✅ Responsive design with Tailwind CSS
- ✅ Mock data integration (v1.0.0)

### Version Compatibility
| Component | Version | Notes |
|-----------|---------|-------|
| React | ^18.2.0 | Functional components with hooks |
| Web3.js | ^4.2.0 | Ethereum blockchain interaction |
| Vite | ^4.4.5 | Build tool and dev server |
| Tailwind CSS | ^3.3.3 | Styling framework |

## Features

### Core Functionality
- **Transparent Donations**: Every transaction is recorded on the blockchain
- **Smart Contract Integration**: Automated fund distribution and verification
- **Real-time Tracking**: Monitor donation progress and fund utilization
- **Wallet Integration**: MetaMask and Web3 wallet support
- **Multi-category Aid**: Support for medical, education, disaster relief, and more

### User Experience
- **Responsive Design**: Optimized for desktop and mobile devices
- **Intuitive Dashboard**: Clean interface for browsing aid requests
- **Progress Visualization**: Visual progress bars and status indicators
- **Secure Authentication**: Web3 wallet-based user authentication

## Quick Start

### Prerequisites
- Node.js (v16 or higher)
- npm or yarn
- MetaMask browser extension
- Git
## Project Structure
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
└── README.md
### Installation
```bash
# Clone the repository
git clone https://github.com/your-username/blockaid-ui.git
cd blockaid-ui

# Install dependencies
npm install

# Start development server
npm run dev
