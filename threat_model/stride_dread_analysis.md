# 🧠 Threat Modelling Analysis (STRIDE + DREAD)

## 📌 Overview

This threat model was developed based on vulnerabilities identified through SAST and DAST analysis of the PyGoat web application.

A combined methodology was applied:

* **STRIDE** → to classify threats
* **DREAD** → to quantify and prioritize risk

---

## 🧩 STRIDE Categories Used

| Category               | Description                    |
| ---------------------- | ------------------------------ |
| Spoofing               | Identity impersonation         |
| Tampering              | Unauthorized data modification |
| Repudiation            | Lack of traceability           |
| Information Disclosure | Data leakage                   |
| Denial of Service      | System disruption              |
| Elevation of Privilege | Unauthorized privilege gain    |

---

## 🔍 DREAD Scoring Breakdown

Each threat is evaluated using:

* **D**amage Potential
* **R**eproducibility
* **E**xploitability
* **A**ffected Users
* **D**iscoverability

Formula:

```
D + R + E + A + D = Total Risk Score
```

---

## 📊 Threat Model Table

| Component             | Threats                                                     | STRIDE Category                                           | DREAD Score | Risk Level   | Rank |
| --------------------- | ----------------------------------------------------------- | --------------------------------------------------------- | ----------- | ------------ | ---- |
| Login Form            | Hardcoded credentials, weak authentication handling         | Spoofing, Information Disclosure                          | 34          | High         | 2    |
| Registration Form     | SQL injection, improper input handling                      | Tampering, Elevation of Privilege, Information Disclosure | 34          | High         | 1    |
| Session Management    | Cross-domain misconfiguration (CORS: `*`)                   | Information Disclosure                                    | 37          | High         | 4    |
| Database              | SQL injection leading to data leakage and tampering         | Tampering, Elevation of Privilege, Information Disclosure | 42          | **Critical** | 1    |
| Third-party Libraries | Use of outdated/insecure libraries (e.g. jQuery, Bootstrap) | Tampering, Denial of Service, Information Disclosure      | 29          | Medium       | 5    |
| API Endpoints         | Path traversal via insecure file access                     | Tampering, Elevation of Privilege, Information Disclosure | 36          | High         | 3    |

---

## 🚨 Key Risk Analysis

### 🔴 1. Database Layer — Critical Risk (Score: 42)

* Vulnerability: SQL Injection
* Impact:

  * Full data compromise
  * Privilege escalation
  * Data tampering

👉 This is the **highest priority risk** and requires immediate remediation.

---

### 🟠 2. Authentication System — High Risk (Score: 34)

* Hardcoded credentials expose sensitive access
* Weak authentication increases attack surface

👉 Enables:

* Account takeover
* Unauthorized access

---

### 🟠 3. API Endpoints — High Risk (Score: 36)

* Path traversal allows access to restricted files

👉 Risk:

* Sensitive file exposure
* System compromise

---

### 🟠 4. Session Management — High Risk (Score: 37)

* Misconfigured CORS (`Access-Control-Allow-Origin: *`)

👉 Risk:

* Cross-origin data leaks
* Unauthorized data access

---

### 🟡 5. Third-party Libraries — Medium Risk (Score: 29)

* Outdated dependencies introduce known vulnerabilities

👉 Risk:

* Indirect exploitation
* Supply chain attacks

---

## 🧠 Key Insights

* The **database component** represents the most critical attack vector.
* Multiple vulnerabilities enable **privilege escalation paths**.
* Security weaknesses exist across:

  * Code level (SAST)
  * Runtime behavior (DAST)
  * Architecture level (Threat modelling)

---

## ⚠️ Security Implications

The application demonstrates:

* Lack of secure coding practices
* Poor input validation
* Weak dependency management
* Misconfigured security controls

---

## 🛠️ Recommended Mitigations

### Immediate (Critical)

* Use parameterized queries (prevent SQL injection)
* Remove hardcoded credentials
* Implement input validation

### High Priority

* Fix CORS configuration
* Secure API file access
* Add CSRF protection

### Medium Priority

* Update third-party libraries
* Implement dependency scanning

---

## 📌 Conclusion

The STRIDE + DREAD model provides a **structured and quantitative risk assessment**, enabling:

* Clear prioritization of vulnerabilities
* Focused remediation strategy
* Improved security posture

👉 The application requires a **shift-left security approach** to prevent similar vulnerabilities in future development.
