% Khai báo discontiguous để tránh cảnh báo nếu cần
:- discontiguous score_answer/3.

% Định nghĩa 20 nghề và mô tả
career('Software Developer', 'Develops software applications and systems, requiring strong programming and problem-solving skills.').
career('Doctor', 'Provides medical care and treatment, requiring compassion and scientific knowledge.').
career('Teacher', 'Educates students, requiring communication and patience.').
career('Data Scientist', 'Analyzes data to extract insights, requiring strong analytical and programming skills.').
career('AI Engineer', 'Designs and develops AI systems, requiring expertise in machine learning and programming.').
career('Nurse', 'Provides patient care and support, requiring empathy and medical knowledge.').
career('Financial Analyst', 'Analyzes financial data to guide investment decisions, requiring analytical and mathematical skills.').
career('Graphic Designer', 'Creates visual content for media, requiring creativity and design skills.').
career('Web Developer', 'Builds websites, requiring programming and design skills.').
career('Cybersecurity Analyst', 'Protects systems from cyber threats, requiring analytical and technical skills.').
career('Accountant', 'Manages financial records, requiring mathematical and detail-oriented skills.').
career('UX/UI Designer', 'Designs user interfaces, requiring creativity and technical skills.').
career('Civil Engineer', 'Designs infrastructure, requiring technical and problem-solving skills.').
career('Mechanical Engineer', 'Designs mechanical systems, requiring engineering and analytical skills.').
career('Marketing Manager', 'Develops marketing strategies, requiring creativity and communication skills.').
career('Project Manager', 'Manages projects, requiring organizational and leadership skills.').
career('Lawyer', 'Provides legal advice, requiring analytical and communication skills.').
career('Pharmacist', 'Dispenses medications, requiring scientific knowledge and attention to detail.').
career('Social Worker', 'Supports communities, requiring empathy and communication skills.').
career('Environmental Scientist', 'Studies the environment, requiring scientific and analytical skills.').

% Quy tắc tính điểm cho từng câu trả lời
% score_answer(QuestionIndex, Answer, Score, Career).
% Câu 1: What is your age range?
score_answer(1, '15-18', 8, _).
score_answer(1, '19-22', 10, _).
score_answer(1, '23-30', 9, _).
score_answer(1, 'Above 30', 7, _).

% Câu 2: What is your favorite hobby?
score_answer(2, 'Creative', 15, 'Graphic Designer').
score_answer(2, 'Creative', 15, 'UX/UI Designer').
score_answer(2, 'Creative', 12, 'Marketing Manager').
score_answer(2, 'Creative', 8, 'Software Developer').
score_answer(2, 'Creative', 8, 'AI Engineer').
score_answer(2, 'Creative', 8, _).
score_answer(2, 'Problem Solving', 15, 'Software Developer').
score_answer(2, 'Problem Solving', 15, 'Data Scientist').
score_answer(2, 'Problem Solving', 15, 'AI Engineer').
score_answer(2, 'Problem Solving', 15, 'Cybersecurity Analyst').
score_answer(2, 'Problem Solving', 15, 'Civil Engineer').
score_answer(2, 'Problem Solving', 15, 'Mechanical Engineer').
score_answer(2, 'Problem Solving', 12, 'Financial Analyst').
score_answer(2, 'Problem Solving', 10, _).
score_answer(2, 'Helping Others', 15, 'Doctor').
score_answer(2, 'Helping Others', 15, 'Nurse').
score_answer(2, 'Helping Others', 15, 'Social Worker').
score_answer(2, 'Helping Others', 12, 'Teacher').
score_answer(2, 'Helping Others', 8, _).
score_answer(2, 'Design', 15, 'Graphic Designer').
score_answer(2, 'Design', 15, 'UX/UI Designer').
score_answer(2, 'Design', 8, _).
score_answer(2, 'Gaming', 10, 'Software Developer').
score_answer(2, 'Gaming', 10, 'AI Engineer').
score_answer(2, 'Gaming', 10, 'Web Developer').
score_answer(2, 'Gaming', 5, _).

% Câu 3: What is your favorite subject?
score_answer(3, 'Computer Science', 20, 'Software Developer').
score_answer(3, 'Computer Science', 20, 'AI Engineer').
score_answer(3, 'Computer Science', 20, 'Web Developer').
score_answer(3, 'Computer Science', 20, 'Cybersecurity Analyst').
score_answer(3, 'Computer Science', 15, 'Data Scientist').
score_answer(3, 'Computer Science', 5, _).
score_answer(3, 'Math', 15, 'Data Scientist').
score_answer(3, 'Math', 15, 'Financial Analyst').
score_answer(3, 'Math', 15, 'Accountant').
score_answer(3, 'Math', 15, 'Civil Engineer').
score_answer(3, 'Math', 15, 'Mechanical Engineer').
score_answer(3, 'Math', 10, _).
score_answer(3, 'Physics', 15, 'AI Engineer').
score_answer(3, 'Physics', 15, 'Civil Engineer').
score_answer(3, 'Physics', 15, 'Mechanical Engineer').
score_answer(3, 'Physics', 10, _).
score_answer(3, 'Biology', 20, 'Doctor').
score_answer(3, 'Biology', 20, 'Nurse').
score_answer(3, 'Biology', 20, 'Pharmacist').
score_answer(3, 'Biology', 20, 'Environmental Scientist').
score_answer(3, 'Biology', 5, _).
score_answer(3, 'Art', 20, 'Graphic Designer').
score_answer(3, 'Art', 20, 'UX/UI Designer').
score_answer(3, 'Art', 5, _).

% Câu 4: What skill do you excel in?
score_answer(4, 'Programming', 20, 'Software Developer').
score_answer(4, 'Programming', 20, 'AI Engineer').
score_answer(4, 'Programming', 20, 'Web Developer').
score_answer(4, 'Programming', 15, 'Data Scientist').
score_answer(4, 'Programming', 15, 'Cybersecurity Analyst').
score_answer(4, 'Programming', 5, _).
score_answer(4, 'Communication', 15, 'Teacher').
score_answer(4, 'Communication', 15, 'Marketing Manager').
score_answer(4, 'Communication', 15, 'Lawyer').
score_answer(4, 'Communication', 12, 'Doctor').
score_answer(4, 'Communication', 12, 'Nurse').
score_answer(4, 'Communication', 12, 'Social Worker').
score_answer(4, 'Communication', 10, _).
score_answer(4, 'Data Analysis', 20, 'Data Scientist').
score_answer(4, 'Data Analysis', 15, 'Financial Analyst').
score_answer(4, 'Data Analysis', 15, 'Accountant').
score_answer(4, 'Data Analysis', 10, _).
score_answer(4, 'Teamwork', 15, 'Teacher').
score_answer(4, 'Teamwork', 15, 'Nurse').
score_answer(4, 'Teamwork', 15, 'Project Manager').
score_answer(4, 'Teamwork', 10, _).

% Câu 5: What is your career goal?
score_answer(5, 'Leadership', 15, 'Project Manager').
score_answer(5, 'Leadership', 15, 'Marketing Manager').
score_answer(5, 'Leadership', 12, 'Financial Analyst').
score_answer(5, 'Leadership', 10, _).
score_answer(5, 'Creativity', 15, 'Graphic Designer').
score_answer(5, 'Creativity', 15, 'UX/UI Designer').
score_answer(5, 'Creativity', 12, 'Software Developer').
score_answer(5, 'Creativity', 12, 'AI Engineer').
score_answer(5, 'Creativity', 10, _).
score_answer(5, 'Helping People', 15, 'Doctor').
score_answer(5, 'Helping People', 15, 'Nurse').
score_answer(5, 'Helping People', 15, 'Social Worker').
score_answer(5, 'Helping People', 12, 'Teacher').
score_answer(5, 'Helping People', 8, _).
score_answer(5, 'Financial Stability', 15, 'Financial Analyst').
score_answer(5, 'Financial Stability', 15, 'Accountant').
score_answer(5, 'Financial Stability', 15, 'Lawyer').
score_answer(5, 'Financial Stability', 10, _).

% Câu 6: What is your personality?
score_answer(6, 'Introvert', 12, 'Software Developer').
score_answer(6, 'Introvert', 12, 'Data Scientist').
score_answer(6, 'Introvert', 12, 'Graphic Designer').
score_answer(6, 'Introvert', 10, _).
score_answer(6, 'Extrovert', 12, 'Teacher').
score_answer(6, 'Extrovert', 12, 'Nurse').
score_answer(6, 'Extrovert', 12, 'Marketing Manager').
score_answer(6, 'Extrovert', 10, _).
score_answer(6, 'Analytical', 15, 'Data Scientist').
score_answer(6, 'Analytical', 15, 'AI Engineer').
score_answer(6, 'Analytical', 15, 'Cybersecurity Analyst').
score_answer(6, 'Analytical', 12, 'Software Developer').
score_answer(6, 'Analytical', 12, 'Financial Analyst').
score_answer(6, 'Analytical', 12, 'Civil Engineer').
score_answer(6, 'Analytical', 12, 'Mechanical Engineer').
score_answer(6, 'Analytical', 10, _).
score_answer(6, 'Creative', 15, 'Graphic Designer').
score_answer(6, 'Creative', 15, 'UX/UI Designer').
score_answer(6, 'Creative', 12, 'Software Developer').
score_answer(6, 'Creative', 12, 'AI Engineer').
score_answer(6, 'Creative', 10, _).

% Câu 7: Do you like working in a team?
score_answer(7, 'Yes', 15, 'Teacher').
score_answer(7, 'Yes', 15, 'Nurse').
score_answer(7, 'Yes', 15, 'Project Manager').
score_answer(7, 'Yes', 10, _).
score_answer(7, 'No', 12, 'Software Developer').
score_answer(7, 'No', 12, 'Data Scientist').
score_answer(7, 'No', 12, 'Graphic Designer').
score_answer(7, 'No', 8, _).
score_answer(7, 'Sometimes', 10, _).

% Câu 8: Do you have leadership qualities?
score_answer(8, 'Yes', 15, 'Project Manager').
score_answer(8, 'Yes', 15, 'Marketing Manager').
score_answer(8, 'Yes', 12, 'Financial Analyst').
score_answer(8, 'Yes', 10, _).
score_answer(8, 'No', 8, _).
score_answer(8, 'Unsure', 9, _).

% Câu 9: How much do you like technology?
score_answer(9, 'High', 20, 'Software Developer').
score_answer(9, 'High', 20, 'AI Engineer').
score_answer(9, 'High', 20, 'Web Developer').
score_answer(9, 'High', 20, 'Cybersecurity Analyst').
score_answer(9, 'High', 15, 'Data Scientist').
score_answer(9, 'High', 15, 'UX/UI Designer').
score_answer(9, 'High', 10, _).
score_answer(9, 'Medium', 10, _).
score_answer(9, 'Low', 5, _).

% Câu 10: How would you describe your health?
score_answer(10, 'Excellent', 15, 'Doctor').
score_answer(10, 'Excellent', 15, 'Nurse').
score_answer(10, 'Excellent', 15, 'Pharmacist').
score_answer(10, 'Excellent', 12, _).
score_answer(10, 'Good', 10, _).
score_answer(10, 'Average', 8, _).
score_answer(10, 'Poor', 5, _).

% Câu 11: Do you have good communication skills?
score_answer(11, 'Yes', 15, 'Teacher').
score_answer(11, 'Yes', 15, 'Marketing Manager').
score_answer(11, 'Yes', 15, 'Lawyer').
score_answer(11, 'Yes', 12, 'Doctor').
score_answer(11, 'Yes', 12, 'Nurse').
score_answer(11, 'Yes', 12, 'Social Worker').
score_answer(11, 'Yes', 10, _).
score_answer(11, 'No', 5, _).
score_answer(11, 'Sometimes', 8, _).

% Câu 12: Do you consider yourself creative?
score_answer(12, 'Yes', 15, 'Graphic Designer').
score_answer(12, 'Yes', 15, 'UX/UI Designer').
score_answer(12, 'Yes', 12, 'Software Developer').
score_answer(12, 'Yes', 12, 'AI Engineer').
score_answer(12, 'Yes', 12, 'Marketing Manager').
score_answer(12, 'Yes', 10, _).
score_answer(12, 'No', 5, _).
score_answer(12, 'Sometimes', 8, _).

% Câu 13: How good are you at problem solving?
score_answer(13, 'Excellent', 15, 'Software Developer').
score_answer(13, 'Excellent', 15, 'Data Scientist').
score_answer(13, 'Excellent', 15, 'AI Engineer').
score_answer(13, 'Excellent', 15, 'Cybersecurity Analyst').
score_answer(13, 'Excellent', 15, 'Civil Engineer').
score_answer(13, 'Excellent', 15, 'Mechanical Engineer').
score_answer(13, 'Excellent', 12, _).
score_answer(13, 'Good', 10, _).
score_answer(13, 'Average', 7, _).
score_answer(13, 'Poor', 4, _).

% Câu 14: How independent are you when working?
score_answer(14, 'Highly Independent', 12, 'Software Developer').
score_answer(14, 'Highly Independent', 12, 'Data Scientist').
score_answer(14, 'Highly Independent', 12, 'Graphic Designer').
score_answer(14, 'Highly Independent', 12, 'UX/UI Designer').
score_answer(14, 'Highly Independent', 10, _).
score_answer(14, 'Somewhat Independent', 10, _).
score_answer(14, 'Prefer Working with Others', 15, 'Teacher').
score_answer(14, 'Prefer Working with Others', 15, 'Nurse').
score_answer(14, 'Prefer Working with Others', 15, 'Project Manager').
score_answer(14, 'Prefer Working with Others', 15, 'Social Worker').
score_answer(14, 'Prefer Working with Others', 8, _).

% Câu 15: What kind of job would you enjoy most?
score_answer(15, 'Office job', 15, 'Software Developer').
score_answer(15, 'Office job', 15, 'Data Scientist').
score_answer(15, 'Office job', 15, 'Financial Analyst').
score_answer(15, 'Office job', 15, 'Accountant').
score_answer(15, 'Office job', 15, 'Web Developer').
score_answer(15, 'Office job', 10, _).
score_answer(15, 'Fieldwork', 15, 'Doctor').
score_answer(15, 'Fieldwork', 15, 'Nurse').
score_answer(15, 'Fieldwork', 15, 'Environmental Scientist').
score_answer(15, 'Fieldwork', 15, 'Civil Engineer').
score_answer(15, 'Fieldwork', 8, _).
score_answer(15, 'Freelance', 15, 'Graphic Designer').
score_answer(15, 'Freelance', 15, 'UX/UI Designer').
score_answer(15, 'Freelance', 10, _).
score_answer(15, 'Entrepreneurship', 15, 'Marketing Manager').
score_answer(15, 'Entrepreneurship', 12, 'AI Engineer').
score_answer(15, 'Entrepreneurship', 10, _).

% Câu 16: Do you enjoy reading books?
score_answer(16, 'Yes', 12, 'Teacher').
score_answer(16, 'Yes', 12, 'Lawyer').
score_answer(16, 'Yes', 10, _).
score_answer(16, 'No', 5, _).
score_answer(16, 'Occasionally', 8, _).

% Câu 17: Are you open to change in your career?
score_answer(17, 'Yes', 15, 'AI Engineer').
score_answer(17, 'Yes', 15, 'Marketing Manager').
score_answer(17, 'Yes', 10, _).
score_answer(17, 'No', 5, _).
score_answer(17, 'Sometimes', 8, _).

% Câu 18: What is your salary expectation?
score_answer(18, 'High', 15, 'Financial Analyst').
score_answer(18, 'High', 15, 'Lawyer').
score_answer(18, 'High', 12, 'Software Developer').
score_answer(18, 'High', 12, 'AI Engineer').
score_answer(18, 'High', 10, _).
score_answer(18, 'Medium', 10, _).
score_answer(18, 'Low', 8, _).

% Câu 19: How important is social impact to you?
score_answer(19, 'Very Important', 15, 'Doctor').
score_answer(19, 'Very Important', 15, 'Nurse').
score_answer(19, 'Very Important', 15, 'Social Worker').
score_answer(19, 'Very Important', 15, 'Environmental Scientist').
score_answer(19, 'Very Important', 12, 'Teacher').
score_answer(19, 'Very Important', 8, _).
score_answer(19, 'Somewhat Important', 10, _).
score_answer(19, 'Not Important', 5, _).

% Câu 20: How do you handle stress?
score_answer(20, 'Very Well', 15, 'Doctor').
score_answer(20, 'Very Well', 15, 'Nurse').
score_answer(20, 'Very Well', 15, 'Project Manager').
score_answer(20, 'Very Well', 12, _).
score_answer(20, 'Well', 10, _).
score_answer(20, 'Average', 8, _).
score_answer(20, 'Poorly', 5, _).

% Câu 21: How important is sustainability in your career choice?
score_answer(21, 'Very Important', 15, 'Environmental Scientist').
score_answer(21, 'Very Important', 12, 'Doctor').
score_answer(21, 'Very Important', 12, 'Nurse').
score_answer(21, 'Very Important', 10, _).
score_answer(21, 'Somewhat Important', 10, _).
score_answer(21, 'Not Important', 8, _).

% Câu 22: What is your passion in life?
score_answer(22, 'Helping People', 15, 'Doctor').
score_answer(22, 'Helping People', 15, 'Nurse').
score_answer(22, 'Helping People', 15, 'Social Worker').
score_answer(22, 'Helping People', 12, 'Teacher').
score_answer(22, 'Helping People', 8, _).
score_answer(22, 'Creativity', 15, 'Graphic Designer').
score_answer(22, 'Creativity', 15, 'UX/UI Designer').
score_answer(22, 'Creativity', 12, 'Software Developer').
score_answer(22, 'Creativity', 12, 'AI Engineer').
score_answer(22, 'Creativity', 12, 'Marketing Manager').
score_answer(22, 'Creativity', 10, _).
score_answer(22, 'Problem Solving', 15, 'Software Developer').
score_answer(22, 'Problem Solving', 15, 'Data Scientist').
score_answer(22, 'Problem Solving', 15, 'AI Engineer').
score_answer(22, 'Problem Solving', 15, 'Cybersecurity Analyst').
score_answer(22, 'Problem Solving', 15, 'Civil Engineer').
score_answer(22, 'Problem Solving', 15, 'Mechanical Engineer').
score_answer(22, 'Problem Solving', 10, _).
score_answer(22, 'Entrepreneurship', 15, 'Marketing Manager').
score_answer(22, 'Entrepreneurship', 15, 'AI Engineer').
score_answer(22, 'Entrepreneurship', 10, _).

% Câu 23: How would you rate your leadership skills?
score_answer(23, 'Excellent', 15, 'Project Manager').
score_answer(23, 'Excellent', 15, 'Marketing Manager').
score_answer(23, 'Excellent', 15, 'Financial Analyst').
score_answer(23, 'Excellent', 12, _).
score_answer(23, 'Good', 10, _).
score_answer(23, 'Average', 8, _).
score_answer(23, 'Poor', 5, _).

% Câu 24: Are you more focused on the long-term or short-term career goals?
score_answer(24, 'Long-term', 15, 'Doctor').
score_answer(24, 'Long-term', 15, 'Teacher').
score_answer(24, 'Long-term', 15, 'Lawyer').
score_answer(24, 'Long-term', 15, 'Civil Engineer').
score_answer(24, 'Long-term', 10, _).
score_answer(24, 'Short-term', 8, _).
score_answer(24, 'Both', 10, _).

% Câu 25: Do you want a creative job?
score_answer(25, 'Yes', 15, 'Graphic Designer').
score_answer(25, 'Yes', 15, 'UX/UI Designer').
score_answer(25, 'Yes', 12, 'Software Developer').
score_answer(25, 'Yes', 12, 'AI Engineer').
score_answer(25, 'Yes', 12, 'Marketing Manager').
score_answer(25, 'Yes', 10, _).
score_answer(25, 'No', 5, _).
score_answer(25, 'Maybe', 8, _).

% Câu 26: Would you prefer an office job?
score_answer(26, 'Yes', 15, 'Software Developer').
score_answer(26, 'Yes', 15, 'Data Scientist').
score_answer(26, 'Yes', 15, 'Financial Analyst').
score_answer(26, 'Yes', 15, 'Accountant').
score_answer(26, 'Yes', 15, 'Web Developer').
score_answer(26, 'Yes', 15, 'UX/UI Designer').
score_answer(26, 'Yes', 10, _).
score_answer(26, 'No', 5, _).
score_answer(26, 'Maybe', 8, _).

% Câu 27: How important is job stability to you?
score_answer(27, 'Very Important', 15, 'Teacher').
score_answer(27, 'Very Important', 15, 'Doctor').
score_answer(27, 'Very Important', 15, 'Accountant').
score_answer(27, 'Very Important', 15, 'Civil Engineer').
score_answer(27, 'Very Important', 10, _).
score_answer(27, 'Somewhat Important', 8, _).
score_answer(27, 'Not Important', 5, _).

% Câu 28: Do you want a job that allows you to be creative?
score_answer(28, 'Yes', 15, 'Graphic Designer').
score_answer(28, 'Yes', 15, 'UX/UI Designer').
score_answer(28, 'Yes', 12, 'Software Developer').
score_answer(28, 'Yes', 12, 'AI Engineer').
score_answer(28, 'Yes', 12, 'Marketing Manager').
score_answer(28, 'Yes', 10, _).
score_answer(28, 'No', 5, _).
score_answer(28, 'Sometimes', 8, _).

% Câu 29: How open are you to learning new skills?
score_answer(29, 'Very Open', 15, 'Software Developer').
score_answer(29, 'Very Open', 15, 'AI Engineer').
score_answer(29, 'Very Open', 15, 'Data Scientist').
score_answer(29, 'Very Open', 15, 'Cybersecurity Analyst').
score_answer(29, 'Very Open', 12, _).
score_answer(29, 'Open', 10, _).
score_answer(29, 'Neutral', 7, _).
score_answer(29, 'Not Open', 4, _).

% Câu 30: What industry would you like to work in?
score_answer(30, 'Technology', 20, 'Software Developer').
score_answer(30, 'Technology', 20, 'AI Engineer').
score_answer(30, 'Technology', 20, 'Web Developer').
score_answer(30, 'Technology', 20, 'Cybersecurity Analyst').
score_answer(30, 'Technology', 15, 'Data Scientist').
score_answer(30, 'Technology', 15, 'UX/UI Designer').
score_answer(30, 'Technology', 5, _).
score_answer(30, 'Healthcare', 20, 'Doctor').
score_answer(30, 'Healthcare', 20, 'Nurse').
score_answer(30, 'Healthcare', 20, 'Pharmacist').
score_answer(30, 'Healthcare', 5, _).
score_answer(30, 'Finance', 20, 'Financial Analyst').
score_answer(30, 'Finance', 20, 'Accountant').
score_answer(30, 'Finance', 5, _).
score_answer(30, 'Education', 20, 'Teacher').
score_answer(30, 'Education', 5, _).
score_answer(30, 'Arts', 20, 'Graphic Designer').
score_answer(30, 'Arts', 20, 'UX/UI Designer').
score_answer(30, 'Arts', 5, _).
score_answer(30, 'Engineering', 20, 'Civil Engineer').
score_answer(30, 'Engineering', 20, 'Mechanical Engineer').
score_answer(30, 'Engineering', 5, _).
score_answer(30, 'Law', 20, 'Lawyer').
score_answer(30, 'Law', 5, _).
score_answer(30, 'Social Services', 20, 'Social Worker').
score_answer(30, 'Social Services', 5, _).
score_answer(30, 'Environment', 20, 'Environmental Scientist').
score_answer(30, 'Environment', 5, _).

% Câu 31: What type of work environment do you prefer?
score_answer(31, 'Collaborative', 15, 'Teacher').
score_answer(31, 'Collaborative', 15, 'Nurse').
score_answer(31, 'Collaborative', 15, 'Project Manager').
score_answer(31, 'Collaborative', 12, 'Software Developer').
score_answer(31, 'Collaborative', 12, 'Marketing Manager').
score_answer(31, 'Collaborative', 10, _).
score_answer(31, 'Independent', 12, 'Data Scientist').
score_answer(31, 'Independent', 12, 'Graphic Designer').
score_answer(31, 'Independent', 12, 'UX/UI Designer').
score_answer(31, 'Independent', 10, _).
score_answer(31, 'Fast-paced', 12, 'Financial Analyst').
score_answer(31, 'Fast-paced', 12, 'Marketing Manager').
score_answer(31, 'Fast-paced', 10, _).
score_answer(31, 'Relaxed', 10, _).

% Câu 32: How comfortable are you with using technology?
score_answer(32, 'Very Comfortable', 20, 'Software Developer').
score_answer(32, 'Very Comfortable', 20, 'AI Engineer').
score_answer(32, 'Very Comfortable', 20, 'Web Developer').
score_answer(32, 'Very Comfortable', 20, 'Cybersecurity Analyst').
score_answer(32, 'Very Comfortable', 15, 'Data Scientist').
score_answer(32, 'Very Comfortable', 15, 'UX/UI Designer').
score_answer(32, 'Very Comfortable', 10, _).
score_answer(32, 'Comfortable', 10, _).
score_answer(32, 'Not Comfortable', 5, _).

% Câu 33: How important is innovation to you in your job?
score_answer(33, 'Very Important', 15, 'AI Engineer').
score_answer(33, 'Very Important', 15, 'Software Developer').
score_answer(33, 'Very Important', 15, 'Data Scientist').
score_answer(33, 'Very Important', 15, 'UX/UI Designer').
score_answer(33, 'Very Important', 10, _).
score_answer(33, 'Somewhat Important', 8, _).
score_answer(33, 'Not Important', 5, _).

% Câu 34: Would you be open to changing careers?
score_answer(34, 'Yes', 15, 'AI Engineer').
score_answer(34, 'Yes', 15, 'Marketing Manager').
score_answer(34, 'Yes', 10, _).
score_answer(34, 'No', 5, _).
score_answer(34, 'Maybe', 8, _).

% Câu 35: Do you enjoy working with data?
score_answer(35, 'Yes', 20, 'Data Scientist').
score_answer(35, 'Yes', 15, 'Financial Analyst').
score_answer(35, 'Yes', 15, 'Accountant').
score_answer(35, 'Yes', 12, 'AI Engineer').
score_answer(35, 'Yes', 12, 'Cybersecurity Analyst').
score_answer(35, 'Yes', 10, _).
score_answer(35, 'No', 5, _).
score_answer(35, 'Sometimes', 8, _).

% Câu 36: How much influence do you want to have in your job?
score_answer(36, 'High Influence', 15, 'Financial Analyst').
score_answer(36, 'High Influence', 15, 'Project Manager').
score_answer(36, 'High Influence', 15, 'Marketing Manager').
score_answer(36, 'High Influence', 12, _).
score_answer(36, 'Medium Influence', 10, _).
score_answer(36, 'Low Influence', 8, _).

% Câu 37: Do you enjoy working with people?
score_answer(37, 'Yes', 15, 'Teacher').
score_answer(37, 'Yes', 15, 'Nurse').
score_answer(37, 'Yes', 15, 'Social Worker').
score_answer(37, 'Yes', 12, 'Doctor').
score_answer(37, 'Yes', 12, 'Marketing Manager').
score_answer(37, 'Yes', 10, _).
score_answer(37, 'No', 8, _).
score_answer(37, 'Sometimes', 10, _).

% Câu 38: How important is financial goal in your career?
score_answer(38, 'Very Important', 15, 'Financial Analyst').
score_answer(38, 'Very Important', 15, 'Accountant').
score_answer(38, 'Very Important', 15, 'Lawyer').
score_answer(38, 'Very Important', 10, _).
score_answer(38, 'Somewhat Important', 8, _).
score_answer(38, 'Not Important', 5, _).

% Câu 39: Do you prefer working indoors or outdoors?
score_answer(39, 'Indoors', 15, 'Software Developer').
score_answer(39, 'Indoors', 15, 'Data Scientist').
score_answer(39, 'Indoors', 15, 'Financial Analyst').
score_answer(39, 'Indoors', 15, 'Accountant').
score_answer(39, 'Indoors', 15, 'Web Developer').
score_answer(39, 'Indoors', 15, 'UX/UI Designer').
score_answer(39, 'Indoors', 12, 'Graphic Designer').
score_answer(39, 'Indoors', 10, _).
score_answer(39, 'Outdoors', 15, 'Environmental Scientist').
score_answer(39, 'Outdoors', 15, 'Civil Engineer').
score_answer(39, 'Outdoors', 12, 'Doctor').
score_answer(39, 'Outdoors', 12, 'Nurse').
score_answer(39, 'Outdoors', 8, _).
score_answer(39, 'Both', 10, _).

% Câu 40: How important is work-life balance to you?
score_answer(40, 'Very Important', 15, 'Teacher').
score_answer(40, 'Very Important', 15, 'Graphic Designer').
score_answer(40, 'Very Important', 15, 'Social Worker').
score_answer(40, 'Very Important', 10, _).
score_answer(40, 'Somewhat Important', 8, _).
score_answer(40, 'Not Important', 5, _).

% Tính tổng điểm cho một nghề
calculate_score(Career, Answers, Score) :-
    career(Career, _),
    findall(S, (
        nth1(Index, Answers, Answer),
        score_answer(Index, Answer, S, Career)
    ), Scores),
    sum_list(Scores, Score).

% So sánh điểm số để sắp xếp
compare_scores(Delta, [Score1|_], [Score2|_]) :-
    compare(Delta, Score2, Score1).

% Truy vấn chính: top_careers trả về top 3 nghề
top_careers(A1, A2, A3, A4, A5, A6, A7, A8, A9, A10,
            A11, A12, A13, A14, A15, A16, A17, A18, A19, A20,
            A21, A22, A23, A24, A25, A26, A27, A28, A29, A30,
            A31, A32, A33, A34, A35, A36, A37, A38, A39, A40, TopCareers) :-
    Answers = [A1, A2, A3, A4, A5, A6, A7, A8, A9, A10,
               A11, A12, A13, A14, A15, A16, A17, A18, A19, A20,
               A21, A22, A23, A24, A25, A26, A27, A28, A29, A30,
               A31, A32, A33, A34, A35, A36, A37, A38, A39, A40],
    findall([Score, Career, Explanation], (
        career(Career, Explanation),
        calculate_score(Career, Answers, Score),
        Score >= 200  % Ngưỡng điểm tối thiểu
    ), CareerScores),
    sort(1, @>=, CareerScores, SortedCareers),
    (   SortedCareers = [] -> TopCareers = []
    ;   length(SortedCareers, Len),
        Len > 3 -> sublist(SortedCareers, 0, 3, TopCareers)
    ;   TopCareers = SortedCareers
    ).

% Hàm phụ trợ: lấy sublist
sublist(List, Start, Length, Sublist) :-
    findall(Elem, (nth0(Index, List, Elem), Index >= Start, Index < Start + Length), Sublist).