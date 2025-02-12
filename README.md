
# Oaksol-Intern Assignment Optical Character Recognition(OCR)

---

## 📝 OCR-Based Medical Form Processor  

### 📌 Project Overview  
This project extracts text and numerical data from **medical forms** using **Tesseract OCR** and **OpenCV** 🏥. It processes images, extracts patient details, and stores structured data in a **MySQL database**. 📊  

---

## ⚙️ Features  
✅ Optical Character Recognition (OCR) using **Tesseract** 🔍  
✅ Image preprocessing with **OpenCV** 🖼️  
✅ Extracts **patient details, medical data, and numerical values** 📄  
✅ Stores extracted data in a **MySQL database** 🗄️  
✅ Saves structured data as **JSON** 📜  

---

## 🚀 Installation  

### 🔹 **1. Clone the Repository**  
```sh
git clone https://github.com/your-username/ocr-medical-processor.git
cd ocr-medical-processor
```

### 🔹 **2. Install Dependencies**  
```sh
pip install opencv-python pytesseract numpy mysql-connector-python
```

### 🔹 **3. Set Up Tesseract OCR**  
- Download and install **Tesseract OCR** from [here](https://github.com/tesseract-ocr/tesseract).  
- Configure the path in the script:  
```python
pytesseract.pytesseract.tesseract_cmd = r'C:\Program Files\Tesseract-OCR\tesseract.exe'
```

---

## 🗄️ Database Setup  

### **📌 Create MySQL Database & Tables**  

#### 🔹 **Create the Database**
```sql
CREATE DATABASE ocr;
USE ocr;
```

#### 🔹 **Create the `patients` Table**
```sql
CREATE TABLE patients (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    dob DATE
);
```

#### 🔹 **Create the `forms_data` Table**
```sql
CREATE TABLE forms_data (
    id INT AUTO_INCREMENT PRIMARY KEY,
    patient_id INT,
    form_json TEXT,
    FOREIGN KEY (patient_id) REFERENCES patients(id)
);
```

---

## 📷 How to Use  

### 🔹 **1. Place Your Image in the Project Folder**  
Make sure the medical form image is saved as `img.png` in your directory.  

### 🔹 **2. Run the Python Script**  
```sh
python script.py
```

### 🔹 **3. Output**  
✅ Extracted data will be **printed on the console**  
✅ A **JSON file (`output.json`)** will be generated  
✅ Data will be **stored in the MySQL database**  

---

## 📜 Sample JSON Output  
```json
{
    "patient_name": "John Doe",
    "dob": "10/09/2009",
    "date": "05/02/2025","injection": "Yes",
 "exercise_therapy": "No",
 "difficulty_ratings": {
 "bending": 3,
 "putting_on_shoes": 1,
 "sleeping": 2
 },
 "patient_changes": {
 "since_last_treatment": "Not Good",
 "since_start_of_treatment": "Worse",
 "last_3_days": "Bad"
 },
 "pain_symptoms": {
 "pain": 2,
 "numbness": 5,
 "tingling": 6,
 "burning": 7,
 "tightness": 5
 },
 "medical_assistant_data": {
 "blood_pressure": "120/80",
 "hr": 80,
 "weight": 67,
 "height": "5'7",
 "spo2": 98,
 "temperature": "98.6",
 "blood_glucose": 115,
 "respirations": 16
 }
```





---

## 🤝 Contributing  
Contributions are **welcome**! 🎉 If you'd like to improve this project, feel free to fork and submit a pull request.  

---

## 📧 Contact  
💡 **Author:** Nushith Aitha  
📩 **Email:** aithanushith@gmail.com  
🔗 **GitHub:** [nushithaitha](https://github.com/nushithaitha)  

---

