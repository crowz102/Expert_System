
# 🎓 Expert System for Career Advice

This expert system was developed for the **Expert Systems** course. It helps users determine suitable careers based on their interests, skills, and personal information. The system uses **Prolog** for rule-based inference and **Python (Tkinter)** to build the user interface.

## 📁 Project Structure

```
Expert_System/
├── career_advice_system.py     # User interface built with Tkinter
├── career_prolog.py            # Logic handling and Python-Prolog interaction
├── career_rules.pl             # Career rules written in Prolog
├── requirements.txt            # Required Python packages
```

## ⚙️ Technologies Used

- Python 3.x  
- SWI-Prolog  
- PySWIP (Python-Prolog bridge)  
- Tkinter (for GUI)

## 🚀 How to Run

### 1. Install Python dependencies

```bash
pip install -r requirements.txt
```

### 2. Install SWI-Prolog

Download from: https://www.swi-prolog.org/Download.html  
Make sure the `swipl` command is accessible from the terminal (add to PATH if needed).

### 3. Run the program

```bash
python career_advice_system.py
```

## 🧠 How It Works

1. The user selects inputs such as age group, hobbies, skills, etc.
2. Python sends this information to Prolog.
3. Prolog processes the facts using the rules defined in `career_rules.pl`.
4. Python receives the inferred result and displays it in the GUI.

## 📜 Sample Prolog Rules

```prolog
career(young, art, literature, creative, "Graphic Designer").
career(adult, tech, math, analytical, "Data Scientist").
career(teen, nature, biology, caring, "Veterinarian").
```

## 📌 Notes

- The rule base can be expanded to support more careers.
- The system is designed to be extensible, such as adding course suggestions or result explanations.

## 👨‍💻 Author

- Student Name: [Enter your name]  
- Course: Expert Systems  
- University: [Enter your university or faculty]

## 📸 Demo

*Add screenshots here if available*

## 📄 License

This project is developed for educational purposes.
