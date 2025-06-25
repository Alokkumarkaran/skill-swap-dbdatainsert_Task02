# 📘 Task 2 – Data Insertion, Update, and Delete (Skill-Swap E-learning Platform)

## 🧑‍💻 Internship: SQL Developer

---

## 📌 Objective

In this task, we practiced:
- Inserting data into multiple tables
- Updating values with `UPDATE`
- Deleting rows using `DELETE`
- Handling NULL values
- Viewing data after each operation

This task is based on my **Skill-Swap E-learning Platform** database created in Task 1.

---

## 🛠 Tools Used

- ✅ MySQL Workbench
- ✅ GitHub
- ✅ Screenshots from SQL Result view

---

## 📂 Files in This Repo

| File | Description |
|------|-------------|
| `Skill_Swap_Insert_Task02.sql` | Contains all SQL INSERT, UPDATE, DELETE statements |
| `README.md` | This explanation file |
| `after_insert.png` | Screenshot showing data after INSERT |
| `after_update.png` | Screenshot showing data after UPDATE |
| `after_delete.png` | Screenshot showing data after DELETE |
| `all_tables_data.png` | Screenshot showing all tables' data |

---

## 📊 Step-by-Step Operations

---

### 🔹 STEP 1: INSERT DATA

I inserted records into these tables:
- `Users`
- `Skills`
- `UserSkills`
- `Courses`
- `Lectures`
- `Enrollments`

INSERT INTO Users (name, email, password, role)
VALUES ('Ravi Kumar', 'ravi@gmail.com', 'pass123', 'learner');

INSERT INTO Courses (title, description, educator_id, price)
VALUES ('Master Web Dev', NULL, 2, 599.00);
📸 Screenshot After Insert:
![Screenshot 2025-06-25 161657](https://github.com/user-attachments/assets/dbc78f1f-64f6-4339-a7a4-d6cd43c07156)

🔹 STEP 2: UPDATE DATA
I updated course price and added missing description using UPDATE.

UPDATE Courses
SET price = 499.00
WHERE course_id = 2;

UPDATE Courses
SET description = 'Advanced fullstack course'
WHERE course_id = 2;
📸 Screenshot After Update:
![Screenshot 2025-06-25 161842](https://github.com/user-attachments/assets/65d68072-caba-4bf8-9db3-82d140e42607)
![Screenshot 2025-06-25 162001](https://github.com/user-attachments/assets/a8033893-8275-490d-ae4d-8c252c8a38c4)


🔹 STEP 3: DELETE DATA
I deleted a course using its course_id (primary key), which avoids safe update mode errors.

DELETE FROM Courses
WHERE course_id = 2;
📸 Screenshot After Delete:
![Screenshot 2025-06-25 162716](https://github.com/user-attachments/assets/75e65dfd-4a0e-445a-b8fa-c0e92038315b)


🔹 STEP 4: VIEW ALL TABLES' DATA
After each operation, I used:

SELECT * FROM table_name;
To verify and display contents of:

Users

Courses

Enrollments

etc.

📸 Screenshot Showing All Tables:
![Screenshot 2025-06-25 164344](https://github.com/user-attachments/assets/d88b1d78-69fc-4fde-b3ae-e000929e660c)


🧠 Learning Outcomes
Topic	What I Learned
INSERT INTO	Add new records to a table
UPDATE	Modify specific values using WHERE
DELETE	Remove records safely with primary key
IS NULL	Check if a column has no value


🙋‍♂️ Submitted by
Name: Alok Kumar
Role: SQL Developer Intern
Email: alokkumarkaranraj@gmail.com
