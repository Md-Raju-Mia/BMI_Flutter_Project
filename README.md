# bmi_app

https://github.com/user-attachments/assets/9ee46b22-22e8-419d-9b59-247ccb9015f4

# 🧮 BMI Calculator App (Flutter)
**A simple BMI (Body Mass Index) Calculator built using Flutter.
This app takes user input for weight and height (feet & inches), calculates BMI, and shows health status with a dynamic background color.**

# 📱 Features
    📥 Input weight in kilograms
    📏 Input height in feet and inches
    🧠 Calculates BMI using standard formula
    🎨 Background color changes based on BMI result:
        🟢 Healthy
        🟠 Overweight
        🔴 Underweight
    📊 Shows BMI value up to 4 decimal points
    ⚠️ Input validation for empty fields

# 🧠 BMI Logic Used
**Steps:**
1. **Convert height from feet & inches → total inches**<br>
2. **Convert inches → centimeters**<br>
3. **Convert centimeters → meters**<br>
4. **Apply BMI formula**
##### BMI = weight (kg) / (height in meters × height in meters)

# 🎯 BMI Categories
    |BMI Range |	Status
    |----------|--------------
    | < 18	    | Underweight
    |----------|--------------
    | 18 – 25  | Healthy
    |----------|-------------
    | > 25	    | Overweight
    |----------|-------------
# 🛠️ Tech Stack
  * **Flutter**
  * **Dart**
  * **Material UI Components**