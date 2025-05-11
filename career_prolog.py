import matplotlib.pyplot as plt
from pyswip import Prolog
import os
import re

class CareerExpertSystem:
    def __init__(self, prolog_file="career_rules.pl"):
        if not os.path.exists(prolog_file):
            raise FileNotFoundError(f"Prolog file '{prolog_file}' not found.")
        self.prolog = Prolog()
        self.prolog.consult(prolog_file)
        # Danh sách các giá trị hợp lệ cho từng câu hỏi
        self.valid_answers = {
            1: ["15-18", "19-22", "23-30", "Above 30"],
            2: ["Creative", "Problem Solving", "Helping Others", "Design", "Gaming"],
            3: ["Computer Science", "Math", "Physics", "Biology", "Art"],
            4: ["Programming", "Communication", "Data Analysis", "Teamwork"],
            5: ["Leadership", "Creativity", "Helping People", "Financial Stability"],
            6: ["Introvert", "Extrovert", "Analytical", "Creative"],
            7: ["Yes", "No", "Sometimes"],
            8: ["Yes", "No", "Unsure"],
            9: ["High", "Medium", "Low"],
            10: ["Excellent", "Good", "Average", "Poor"],
            11: ["Yes", "No", "Sometimes"],
            12: ["Yes", "No", "Sometimes"],
            13: ["Excellent", "Good", "Average", "Poor"],
            14: ["Highly Independent", "Somewhat Independent", "Prefer Working with Others"],
            15: ["Office job", "Fieldwork", "Freelance", "Entrepreneurship"],
            16: ["Yes", "No", "Occasionally"],
            17: ["Yes", "No", "Sometimes"],
            18: ["High", "Medium", "Low"],
            19: ["Very Important", "Somewhat Important", "Not Important"],
            20: ["Very Well", "Well", "Average", "Poorly"],
            21: ["Very Important", "Somewhat Important", "Not Important"],
            22: ["Helping People", "Creativity", "Problem Solving", "Entrepreneurship"],
            23: ["Excellent", "Good", "Average", "Poor"],
            24: ["Long-term", "Short-term", "Both"],
            25: ["Yes", "No", "Maybe"],
            26: ["Yes", "No", "Maybe"],
            27: ["Very Important", "Somewhat Important", "Not Important"],
            28: ["Yes", "No", "Sometimes"],
            29: ["Very Open", "Open", "Neutral", "Not Open"],
            30: ["Technology", "Healthcare", "Finance", "Education", "Arts", "Engineering", "Law", "Social Services", "Environment"],
            31: ["Collaborative", "Independent", "Fast-paced", "Relaxed"],
            32: ["Very Comfortable", "Comfortable", "Not Comfortable"],
            33: ["Very Important", "Somewhat Important", "Not Important"],
            34: ["Yes", "No", "Maybe"],
            35: ["Yes", "No", "Sometimes"],
            36: ["High Influence", "Medium Influence", "Low Influence"],
            37: ["Yes", "No", "Sometimes"],
            38: ["Very Important", "Somewhat Important", "Not Important"],
            39: ["Indoors", "Outdoors", "Both"],
            40: ["Very Important", "Somewhat Important", "Not Important"]
        }

    def _escape_prolog_string(self, s):
        """Escape special characters in Prolog string."""
        return re.sub(r"(['\\])", r"\\\1", s)

    def advise_career(self, *answers):
        # Kiểm tra đủ 40 câu trả lời
        if len(answers) != 40:
            raise ValueError("Cần đúng 40 câu trả lời!")
        
        # Kiểm tra tính hợp lệ của câu trả lời
        for i, ans in enumerate(answers, 1):
            if ans not in self.valid_answers[i]:
                raise ValueError(f"Câu trả lời không hợp lệ cho câu {i}: '{ans}'. Phải là một trong {self.valid_answers[i]}")
        
        # Chuẩn hóa câu trả lời
        escaped_answers = [self._escape_prolog_string(str(ans)) for ans in answers]
        
        # Tạo truy vấn Prolog
        query = f"top_careers('{escaped_answers[0]}', '{escaped_answers[1]}', '{escaped_answers[2]}', " \
                f"'{escaped_answers[3]}', '{escaped_answers[4]}', '{escaped_answers[5]}', '{escaped_answers[6]}', " \
                f"'{escaped_answers[7]}', '{escaped_answers[8]}', '{escaped_answers[9]}', '{escaped_answers[10]}', " \
                f"'{escaped_answers[11]}', '{escaped_answers[12]}', '{escaped_answers[13]}', '{escaped_answers[14]}', " \
                f"'{escaped_answers[15]}', '{escaped_answers[16]}', '{escaped_answers[17]}', '{escaped_answers[18]}', " \
                f"'{escaped_answers[19]}', '{escaped_answers[20]}', '{escaped_answers[21]}', '{escaped_answers[22]}', " \
                f"'{escaped_answers[23]}', '{escaped_answers[24]}', '{escaped_answers[25]}', '{escaped_answers[26]}', " \
                f"'{escaped_answers[27]}', '{escaped_answers[28]}', '{escaped_answers[29]}', '{escaped_answers[30]}', " \
                f"'{escaped_answers[31]}', '{escaped_answers[32]}', '{escaped_answers[33]}', '{escaped_answers[34]}', " \
                f"'{escaped_answers[35]}', '{escaped_answers[36]}', '{escaped_answers[37]}', '{escaped_answers[38]}', " \
                f"'{escaped_answers[39]}', TopCareers)"
        
        print(f"[DEBUG] Prolog query: {query}")
        try:
            results = list(self.prolog.query(query))
            print(f"[DEBUG] Raw Prolog results: {results}")
            top_results = []
            if results and results[0].get('TopCareers'):
                for result in results[0]['TopCareers']:
                    score = result[0]
                    career = result[1]
                    explanation = result[2]
                    top_results.append((career, score, explanation))
            if not top_results:
                top_results.append(('No Career Found', 0, 'No careers matched your answers. Please try different responses.'))
            return top_results
        except Exception as e:
            print(f"[DEBUG] Prolog query error: {str(e)}")
            print(f"[DEBUG] Answers: {answers}")
            raise RuntimeError(f"Prolog query failed: {str(e)}. Kiểm tra file career_rules.pl hoặc câu trả lời.")

    def get_demand_data(self):
        # Cập nhật dữ liệu để bao gồm nhiều nghề hơn
        careers = [
            'Software Developer', 'Doctor', 'Teacher', 'Data Scientist', 'AI Engineer',
            'Nurse', 'Financial Analyst', 'Graphic Designer', 'Web Developer', 'Cybersecurity Analyst'
        ]
        demand = [80, 90, 70, 85, 82, 88, 75, 65, 78, 80]
        return careers, demand

    def plot_career_trends(self, careers, demand):
        if not careers or not demand or len(careers) != len(demand):
            raise ValueError("Invalid career or demand data.")
        plt.figure(figsize=(10, 6))
        plt.bar(careers, demand, color='skyblue')
        plt.xlabel('Careers')
        plt.ylabel('Demand (%)')
        plt.title('Career Demand Trends 2025')
        plt.xticks(rotation=45, ha='right')
        plt.tight_layout()
        plt.savefig('career_trends.png')
        plt.close()

# Test hệ thống với bộ câu trả lời mẫu
if __name__ == "__main__":
    try:
        es = CareerExpertSystem()
        sample_answers = [
            "19-22", "Problem Solving", "Computer Science", "Programming", "Creativity",
            "Analytical", "Sometimes", "Yes", "High", "Good",
            "Yes", "Yes", "Excellent", "Highly Independent", "Office job",
            "Yes", "Yes", "High", "Somewhat Important", "Well",
            "Not Important", "Problem Solving", "Good", "Long-term", "Yes",
            "Yes", "Somewhat Important", "Yes", "Very Open", "Technology",
            "Independent", "Very Comfortable", "Very Important", "Yes", "Yes",
            "Medium Influence", "No", "Somewhat Important", "Indoors", "Somewhat Important"
        ]
        print("Running test with sample answers for Software Developer...")
        results = es.advise_career(*sample_answers)
        for career, score, explanation in results:
            print(f"👉 {career} (Điểm: {score})\n🧠 Lý do: {explanation}\n")
        
        careers, demand = es.get_demand_data()
        es.plot_career_trends(careers, demand)
        print("Career trends plot saved as 'career_trends.png'")
    except Exception as e:
        print(f"Error during test: {str(e)}")