//Global

float[] grades = {0.0, 0.2, 0.4, 0.7, 10.0, 12.0}; // Array for student grades
String[] results = new String[grades.length]; // Array to store "pass" or "fail" for each grade
float passingScore = 0.4; // Minimum requirement needed to pass


void setup(){
  // Evaluate and save(store) results
  evaluateGrades();
  
  // Print results
  printResults();

  
}

void evaluateGrades(){
  // Looping through the grade array and finding out if people have passed or failed
  for(int i = 0; i < grades.length; i++){
    results[i] = checkPassFail(grades[i]); // Calling the method to check if its a pass or fail
    } 
}

String checkPassFail(float grade){
  // check if grade meets the passing score
  if (grade >= passingScore){
    return "Pass"; // if true return "Pass"
  }else{
    return "Fail"; // if false return "Fail"
  }
}

void printResults() {
  // Loop for printing each students grade and result
for(int i = 0; i < grades.length; i++){
  String output = "Student " + (i + 1) + ": Grade = " + grades[i] + ", Result = " + results[i];
  println(output);
}
}
