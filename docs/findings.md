# Findings

## SAST Results

### Critical

* Hardcoded credentials (multiple instances)
* Plaintext password exposure

### High

* Insecure dependencies
* Weak cryptographic usage

---

## DAST Results

### Critical

* SQL Injection vulnerabilities

### High

* Missing CSRF tokens
* CSP misconfiguration
* Cross-domain issues

---

## Key Insight

SAST reveals **code-level weaknesses**, while DAST exposes **runtime vulnerabilities**, confirming complementary roles.
