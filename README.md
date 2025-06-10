
# 🗳️ Secure E-Voting System Using Homomorphic Encryption (Paillier + ElGamal)

This project implements a secure, scalable electronic voting system (E-voting) using **Paillier** and **ElGamal** Homomorphic Encryption schemes. It ensures confidentiality, integrity, and verifiability by encrypting votes and allowing vote tallying without decryption. The system is designed with **Java (JSP + Servlets)** and uses **MySQL** for storage, with support for cloud-based deployment via **DriveHQ**.

---

## 🔐 Core Features

- ✅ **Homomorphic Encryption** (Paillier & ElGamal)
- 📩 **OTP-based voter login**
- 🌐 **Web-based voting** via JSP/Servlets
- ☁️ **Cloud Storage Integration** (DriveHQ for encrypted votes)
- 📊 **Encrypted Vote Tallying**
- 📱 **SMS Notifications to Voters**
- 🧾 **Admin Management**: polls, voters, candidates
- 🗳️ **Individual Vote Confirmation**
- 📥 **Result Decryption with Privacy**

---

## 📌 Technologies Used

- **Java (JSP + Servlets)** – Business logic and web layer
- **MySQL** – Voter, poll, and result data storage
- **DriveHQ Cloud** – Encrypted vote storage
- **Paillier / ElGamal** – Homomorphic encryption algorithms
- **Apache Tomcat** – Web server
- **SMS Gateway API** – For notifications

---

## 📂 Project Structure

```plaintext
📁 OnlineVoting/
├── 📁 WebContent/
│   ├── adminlogin.jsp
│   ├── userlogin.jsp
│   ├── userregister.jsp
│   └── ...
├── 📁 src/
│   ├── adminlogin.java
│   ├── userreg.java
│   ├── voteoption.java
│   ├── Paillier.java
│   ├── Elgamal.java
│   └── ...
├── 📁 snapshots/
│   ├── homepage.png
│   ├── admin_panel.png
│   └── ...
├── 📁 cloud/
│   └── vote_encrypted_array.txt
├── README.md
└── final report.docx
```

---

## 🏗️ System Design Overview

- **Actors**: Admin and Voter
- **Admin Tasks**:
  - Create/Manage polls
  - Add/remove voters
  - Enable/disable elections
  - View and decrypt results
- **Voter Tasks**:
  - Register and login (OTP)
  - Cast encrypted vote
  - Receive confirmation/result

---

## 🛠️ How to Run the Project

### 🖥️ Prerequisites
- Java 8+
- Apache Tomcat 8.5+
- NetBeans 8.2 (or any IDE)
- MySQL Server
- DriveHQ account (for FTP)

### 🧪 Setup Steps
1. Clone this repo:
   ```bash
   git clone https://github.com/yourusername/secure-e-voting.git
   cd secure-e-voting
   ```
2. Import into NetBeans or Eclipse.
3. Setup MySQL DB and update DB credentials in `.java` files.
4. Configure DriveHQ credentials in `ftpcon.java`.
5. Deploy the project on Tomcat.
6. Start voting via browser `localhost:8080/OnlineVoting`.

---

## 🔬 Cryptographic Highlights

- **Paillier Homomorphic Addition**: Allows adding encrypted votes to calculate totals.
- **ElGamal Homomorphic Multiplication**: Enables secure tallying.
- **Vote Randomization**: Even if two users vote for the same candidate, encrypted outputs differ.

---

## 📷 Snapshots

| Login Page | Admin Panel | Vote Casting | Encrypted Result |
|------------|-------------|---------------|------------------|
| ![](snapshots/login.png) | ![](snapshots/admin.png) | ![](snapshots/vote.png) | ![](snapshots/result.png) |

---

## 📈 Test Highlights

- ✔️ **Usability Test**: User-friendly JSP flows
- ✔️ **Security Test**: Invalid inputs rejected; OTP required
- ✔️ **Performance**:
  - Paillier – faster encryption
  - ElGamal – faster decryption

---

## 📜 Report

Full detailed documentation is available in [`final report.docx`](final%20report.docx)

---

## 🙌 Future Enhancements

- Build a browser plugin or Android app for mobile voting
- Integrate blockchain for vote immutability
- Enhance UI with Bootstrap/React

---

## 📧 Authors

- **Rahul Balulmath**
- **Sharath K**
- **Sushmitha Kalkur**
- **Shiv Kumar**
- Department of Information Science & Engineering
