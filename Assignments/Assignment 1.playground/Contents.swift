import UIKit

/* 1. Use an array to store the names of at least 5 students. */
let studentNames: [String] = ["Nico", "Nathan", "Briana", "Sarah", "Jacob"]

/* 2. Use a dictionary to store each student's grades, where the key is the student's name and the value is an array of grades. */

let studentGrades: [String: [Int]] = [
    // key     Grades
    "Nico": [88, 92, 79, 94],
    "Nathan": [90, 85, 93, 88],
    "Briana": [76, 82, 91, 89],
    "Sarah": [84, 91, 87, 90],
    "Jacob": [81, 89, 78, 92]
]

/* 3. Prints a summary of each student's grades, including their average grade. */

print("Student Record Summary: \n")

var highestAverage: Double = 0.0
var topStudent: String = ""

// Travel the array of students to calculate the average grade
for student in studentNames {
    
//    print("The student \(student)")
//    print("The grades: \(studentGrades[student])")
    
    if let grades = studentGrades[student] {
        // Calculate the average
        let total = grades.reduce(0, +)
        let average = Double(total) / Double(grades.count)
        
        print("Student: \(student)")
        print("Grades: \(grades)")
        print(String(format: "Average is %.2f \n", average ))
        
        // Highest average
        if average > highestAverage {
            highestAverage = average
            topStudent = student
        }
    }
}

// Print the highest average and the top student.

print(" Top student: \(topStudent) and highest average: \(highestAverage)")
