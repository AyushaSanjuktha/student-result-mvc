# 🎓 Student Result Calculator

A simple Java MVC web application built using **JSP and Servlets**, deployed on **Apache Tomcat 11**.

---

## 📌 About the Project

This project demonstrates the **MVC (Model-View-Controller)** architecture using core Java web technologies.  
The user enters a student's name and marks for 3 subjects. The application calculates the **total** and **average** and displays the result.

---

## 🏗️ MVC Architecture

| Layer | File | Role |
|---|---|---|
| Model | `StudentResult.java` | Stores student data with getters & setters |
| View | `main.jsp`, `result.jsp` | Input form and result display |
| Controller | `ResultServlet.java` | Handles request, calculates result, forwards to view |

---

## 📁 Project Structure

```
mvcproject/
│
├── main.jsp                        → Input form (View)
├── result.jsp                      → Result display (View)
│
└── WEB-INF/
      ├── web.xml                   → Servlet configuration
      └── classes/
            ├── StudentResult.java  → Model
            └── ResultServlet.java  → Controller
```

---

## ⚙️ Tech Stack

- Java Servlets
- JSP (JavaServer Pages)
- Apache Tomcat 11
- HTML & CSS

---

## 🚀 How to Run

### Prerequisites
- JDK installed
- Apache Tomcat 11 installed

### Steps

**1. Place the project in Tomcat's webapps folder:**
```
C:\Program Files\Apache Software Foundation\Tomcat 11.0\webapps\mvcproject
```

**2. Compile the Java files:**
```cmd
cd "C:\Program Files\Apache Software Foundation\Tomcat 11.0\webapps\mvcproject"

javac -classpath "C:\Program Files\Apache Software Foundation\Tomcat 11.0\lib\servlet-api.jar" -d WEB-INF\classes WEB-INF\classes\StudentResult.java WEB-INF\classes\ResultServlet.java
```

**3. Start Tomcat** via `services.msc` → Apache Tomcat 11 → Start

**4. Open in browser:**
```
http://localhost:8080/mvcproject/main.jsp
```

---

## 📷 How It Works

1. User fills in **Student Name** and marks for **3 subjects** on `main.jsp`
2. Form submits to `ResultServlet`
3. Servlet calculates **Total** and **Average**, stores in `StudentResult` model
4. Result is forwarded to `result.jsp` and displayed in a table

---

## ⚠️ Important Note for Tomcat 10+

This project uses `jakarta.servlet.*` imports (not `javax.servlet.*`).  
Tomcat 10 and above switched from `javax` to `jakarta` packages.

---

## 👩‍💻 Author

**Ayusha Sanjuktha**  
[GitHub](https://github.com/AyushaSanjuktha)
