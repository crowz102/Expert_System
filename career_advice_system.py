import tkinter as tk
from tkinter import ttk, messagebox
import matplotlib
matplotlib.use('TkAgg')
import matplotlib.pyplot as plt
from matplotlib.backends.backend_tkagg import FigureCanvasTkAgg
from career_prolog import CareerExpertSystem

# Main window
root = tk.Tk()
root.title("🎓 Career Advice System")
root.configure(bg="#f0f8ff")

# Get screen dimensions
screen_width = root.winfo_screenwidth()
screen_height = root.winfo_screenheight()

# Window dimensions
window_width = 800
window_height = 850

# Calculate position to center the window
x_position = int((screen_width - window_width) / 2)
y_position = int((screen_height - window_height) / 2)

# Update window position
root.geometry(f"{window_width}x{window_height}+{x_position}+{y_position}")

font_label = ("Segoe UI", 10)
font_title = ("Segoe UI", 16, "bold")

# Title
tk.Label(root, text="CAREER ADVICE SYSTEM", font=font_title, fg="#1e90ff", bg="#f0f8ff").pack(pady=10)

# Full name
form_frame = tk.Frame(root, bg="#f0f8ff")
form_frame.pack(pady=5, fill='x', padx=20)
tk.Label(form_frame, text="Full Name:", font=font_label, bg="#f0f8ff").grid(row=0, column=0, sticky="w", padx=5, pady=5)
entry_fullname = tk.Entry(form_frame, font=("Segoe UI", 10))
entry_fullname.grid(row=0, column=1, sticky="ew", padx=5, pady=5)
form_frame.grid_columnconfigure(1, weight=1)

# Scrollable Questions Panel
scroll_frame = tk.Frame(root)
scroll_frame.pack(fill='both', expand=True, padx=20, pady=5)

canvas = tk.Canvas(scroll_frame, bg="#f0f8ff")
scrollbar = ttk.Scrollbar(scroll_frame, orient="vertical", command=canvas.yview)
scrollable_frame = tk.Frame(canvas, bg="#f0f8ff")

scrollable_frame.bind(
    "<Configure>",
    lambda e: canvas.configure(
        scrollregion=canvas.bbox("all")
    )
)
canvas.config(yscrollcommand=scrollbar.set)
canvas.create_window((0, 0), window=scrollable_frame, anchor="nw")

# Thêm hỗ trợ cuộn chuột
def on_mousewheel(event):
    canvas.yview_scroll(int(-1 * (event.delta / 120)), "units")

canvas.bind_all("<MouseWheel>", on_mousewheel)  # Windows
canvas.bind_all("<Button-4>", lambda e: canvas.yview_scroll(-1, "units"))  # Linux
canvas.bind_all("<Button-5>", lambda e: canvas.yview_scroll(1, "units"))   # Linux

canvas.pack(side="left", fill="both", expand=True)
scrollbar.pack(side="right", fill="y")

# Tạo biến lưu kết quả 40 câu hỏi
question_vars = [tk.StringVar(value="none_selected") for _ in range(40)]

# Danh sách câu hỏi và đáp án
question_list = [
    ("What is your age range?", ["15-18", "19-22", "23-30", "Above 30"]),
    ("What is your favorite hobby?", ["Creative", "Problem Solving", "Helping Others", "Design", "Gaming"]),
    ("What is your favorite subject?", ["Computer Science", "Math", "Physics", "Biology", "Art"]),
    ("What skill do you excel in?", ["Programming", "Communication", "Data Analysis", "Teamwork"]),
    ("What is your career goal?", ["Leadership", "Creativity", "Helping People", "Financial Stability"]),
    ("What is your personality?", ["Introvert", "Extrovert", "Analytical", "Creative"]),
    ("Do you like working in a team?", ["Yes", "No", "Sometimes"]),
    ("Do you have leadership qualities?", ["Yes", "No", "Unsure"]),
    ("How much do you like technology?", ["High", "Medium", "Low"]),
    ("How would you describe your health?", ["Excellent", "Good", "Average", "Poor"]),
    ("Do you have good communication skills?", ["Yes", "No", "Sometimes"]),
    ("Do you consider yourself creative?", ["Yes", "No", "Sometimes"]),
    ("How good are you at problem solving?", ["Excellent", "Good", "Average", "Poor"]),
    ("How independent are you when working?", ["Highly Independent", "Somewhat Independent", "Prefer Working with Others"]),
    ("What kind of job would you enjoy most?", ["Office job", "Fieldwork", "Freelance", "Entrepreneurship"]),
    ("Do you enjoy reading books?", ["Yes", "No", "Occasionally"]),
    ("Are you open to change in your career?", ["Yes", "No", "Sometimes"]),
    ("What is your salary expectation?", ["High", "Medium", "Low"]),
    ("How important is social impact to you?", ["Very Important", "Somewhat Important", "Not Important"]),
    ("How do you handle stress?", ["Very Well", "Well", "Average", "Poorly"]),
    ("How important is sustainability in your career choice?", ["Very Important", "Somewhat Important", "Not Important"]),
    ("What is your passion in life?", ["Helping People", "Creativity", "Problem Solving", "Entrepreneurship"]),
    ("How would you rate your leadership skills?", ["Excellent", "Good", "Average", "Poor"]),
    ("Are you more focused on the long-term or short-term career goals?", ["Long-term", "Short-term", "Both"]),
    ("Do you want a creative job?", ["Yes", "No", "Maybe"]),
    ("Would you prefer an office job?", ["Yes", "No", "Maybe"]),
    ("How important is job stability to you?", ["Very Important", "Somewhat Important", "Not Important"]),
    ("Do you want a job that allows you to be creative?", ["Yes", "No", "Sometimes"]),
    ("How open are you to learning new skills?", ["Very Open", "Open", "Neutral", "Not Open"]),
    ("What industry would you like to work in?", ["Technology", "Healthcare", "Finance", "Education", "Arts", "Engineering", "Law", "Social Services", "Environment"]),
    ("What type of work environment do you prefer?", ["Collaborative", "Independent", "Fast-paced", "Relaxed"]),
    ("How comfortable are you with using technology?", ["Very Comfortable", "Comfortable", "Not Comfortable"]),
    ("How important is innovation to you in your job?", ["Very Important", "Somewhat Important", "Not Important"]),
    ("Would you be open to changing careers?", ["Yes", "No", "Maybe"]),
    ("Do you enjoy working with data?", ["Yes", "No", "Sometimes"]),
    ("How much influence do you want to have in your job?", ["High Influence", "Medium Influence", "Low Influence"]),
    ("Do you enjoy working with people?", ["Yes", "No", "Sometimes"]),
    ("How important is financial goal in your career?", ["Very Important", "Somewhat Important", "Not Important"]),
    ("Do you prefer working indoors or outdoors?", ["Indoors", "Outdoors", "Both"]),
    ("How important is work-life balance to you?", ["Very Important", "Somewhat Important", "Not Important"]),
]

# Hiển thị từng câu hỏi và đáp án
for i, (question, options) in enumerate(question_list):
    tk.Label(scrollable_frame, text=f"{i+1}. {question}", bg="#f0f8ff", font=font_label, anchor="w").pack(fill='x', pady=(10, 2))
    for opt in options:
        tk.Radiobutton(scrollable_frame, text=opt, variable=question_vars[i], value=opt,
                       bg="#f0f8ff", font=("Segoe UI", 10)).pack(anchor='w')

# Buộc làm mới giao diện sau khi tạo Radiobutton
root.update()

# Hàm xử lý khi bấm nút Reset
def reset_form():
    entry_fullname.delete(0, tk.END)
    for var in question_vars:
        var.set("none_selected")
    text_result.config(state='normal')
    text_result.delete("1.0", tk.END)
    text_result.config(state='disabled')

# Hàm xử lý khi bấm nút Get Career Advice
def advise_career():
    fullname = entry_fullname.get().strip()
    if not fullname:
        messagebox.showwarning("Thiếu thông tin", "Vui lòng nhập họ tên!")
        return

    answers = [var.get().strip() for var in question_vars]
    if any(ans == "none_selected" for ans in answers):
        messagebox.showwarning("Thiếu câu trả lời", "Vui lòng trả lời đầy đủ tất cả câu hỏi!")
        return

    try:
        es = CareerExpertSystem()
        result = es.advise_career(*answers)
        text_result.config(state='normal')
        text_result.delete("1.0", tk.END)
        text_result.insert(tk.END, f"Kính gửi {fullname},\n\nDựa trên câu trả lời của bạn, đây là các gợi ý nghề nghiệp:\n\n")
        for career, score, explanation in result:
            text_result.insert(tk.END, f"👉 {career} (Điểm: {score})\n🧠 Lý do: {explanation}\n\n")
        text_result.config(state='disabled')
    except Exception as e:
        invalid_answers = [(i+1, ans) for i, ans in enumerate(answers) if ans not in question_list[i][1]]
        error_msg = f"Đã xảy ra lỗi: {str(e)}\n"
        if invalid_answers:
            error_msg += f"Các câu trả lời không hợp lệ:\n" + "\n".join([f"Câu {q}: {ans}" for q, ans in invalid_answers])
        else:
            error_msg += "Vui lòng kiểm tra lại câu trả lời hoặc file Prolog."
        messagebox.showerror("Lỗi", error_msg)
        print(f"[ERROR] Exception in advise_career: {str(e)}")
        print(f"[DEBUG] Answers: {answers}")

# Frame chứa các nút
button_frame = tk.Frame(root, bg="#f0f8ff")
button_frame.pack(pady=10)

# Nút lấy kết quả
tk.Button(button_frame, text="🚀 Get Career Advice", font=("Segoe UI", 11, "bold"),
          bg="#1e90ff", fg="white", width=25, command=advise_career).pack(side="left", padx=5)

# Nút Reset
tk.Button(button_frame, text="🔄 Reset", font=("Segoe UI", 11, "bold"),
          bg="#ff8c00", fg="white", width=25, command=reset_form).pack(side="left", padx=5)

# Tab result + chart
notebook = ttk.Notebook(root)
notebook.pack(fill='both', expand=True, padx=20, pady=10)

tab1 = tk.Frame(notebook, bg="#ffffff")
text_result = tk.Text(tab1, width=80, height=20, font=("Segoe UI", 10), state='disabled', wrap=tk.WORD, bg="#ffffff", fg="#000080")
text_result.pack(padx=10, pady=10, fill='both', expand=True)
notebook.add(tab1, text="📋 Advice Result")

tab2 = tk.Frame(notebook, bg="#ffffff")
def show_bar_chart():
    es = CareerExpertSystem()
    demand_data = es.get_demand_data()
    jobs = demand_data[0]
    demand = demand_data[1]
    
    fig, ax = plt.subplots(figsize=(6, 4))
    ax.barh(jobs, demand, color="#1e90ff")
    ax.set_title("Top Careers in Demand 2025", fontsize=12)
    ax.set_xlabel("Demand Level (%)")
    ax.invert_yaxis()
    fig.tight_layout()

    canvas = FigureCanvasTkAgg(fig, master=tab2)
    canvas.draw()
    canvas.get_tk_widget().pack(fill="both", expand=True, padx=10, pady=10)
    plt.close(fig)

show_bar_chart()
notebook.add(tab2, text="📊 Career Trends")

root.mainloop()