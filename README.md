# 🔐 Secure Application Analysis using SAST, DAST & Threat Modelling

## 📌 Overview

This project presents a **full-stack security assessment** of the PyGoat vulnerable web application using:

* Static Analysis (SAST) → Horusec
* Dynamic Analysis (DAST) → OWASP ZAP
* Threat Modelling → STRIDE + DREAD

The goal is to **identify, analyze, and prioritize vulnerabilities** across the application lifecycle.

---

## 🧪 Target Application

* Django-based vulnerable app (PyGoat)
* ~14,000 lines of code across Python, HTML, CSS, JS 

---

## ⚙️ Methodology

### 1. Application Setup

* Environment: Kali Linux VM
* Django app deployed locally at `127.0.0.1:1234` 

### 2. Static Analysis (SAST)

Tool: **Horusec**

Findings:

* 26 Critical vulnerabilities
* 21 Hardcoded credentials
* 5 vulnerable dependencies 

---

### 3. Dynamic Analysis (DAST)

Tool: **OWASP ZAP**

Findings:

* SQL Injection (High)
* Missing CSRF protection
* CSP misconfiguration
* Vulnerable JS libraries 

---

### 4. Threat Modelling

Frameworks:

* STRIDE (classification)
* DREAD (risk scoring)

Top risks:

* SQL Injection (Critical)
* Hardcoded credentials
* Path traversal
* CORS misconfiguration 

---

## 🚨 Key Findings

### Critical Vulnerabilities

* SQL Injection → Data compromise
* Hardcoded credentials → Unauthorized access
* Path traversal → File system exposure

### High Severity

* Missing CSRF protection
* Weak CSP headers
* Cross-domain misconfiguration

---

## 📊 Security Posture

The application exhibits:

* Weak secure coding practices
* Poor runtime protection
* Large attack surface

➡️ Indicates lack of **secure SDLC implementation** 

---

## 🧠 Threat Model Summary

| Component     | Risk Level | Key Threat            |
| ------------- | ---------- | --------------------- |
| Database      | Critical   | SQL Injection         |
| Login System  | High       | Hardcoded Credentials |
| API Endpoints | High       | Path Traversal        |
| Session Mgmt  | High       | CORS Issues           |

---

## ▶️ How to Run

```bash
chmod +x run.sh
./run.sh
```

---

## 📂 Project Structure

See folders:

* `/src` → scripts
* `/reports` → scan outputs
* `/docs` → methodology & findings
* `/threat_model` → STRIDE + DREAD

---

## 🔐 Security Impact

This project demonstrates:

* Real-world vulnerability detection
* Security tool integration
* Risk prioritization using threat modelling
* Practical application of OWASP concepts

---

## ⚠️ Disclaimer

For educational use only. 

Do not scan systems without permission.

---

## 👤 Author

Hsu Shun Lae

MSc Cybersecurity
