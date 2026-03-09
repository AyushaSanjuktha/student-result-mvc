// MODEL CLASS
// This class stores student data and results.
// It uses private variables with public getters and setters (Encapsulation).

public class StudentResult {

    // Private fields
    private String studentName;
    private int subject1;
    private int subject2;
    private int subject3;
    private int total;
    private double average;

    // ---------- GETTERS ----------

    public String getStudentName() {
        return studentName;
    }

    public int getSubject1() {
        return subject1;
    }

    public int getSubject2() {
        return subject2;
    }

    public int getSubject3() {
        return subject3;
    }

    public int getTotal() {
        return total;
    }

    public double getAverage() {
        return average;
    }

    // ---------- SETTERS ----------

    public void setStudentName(String studentName) {
        this.studentName = studentName;
    }

    public void setSubject1(int subject1) {
        this.subject1 = subject1;
    }

    public void setSubject2(int subject2) {
        this.subject2 = subject2;
    }

    public void setSubject3(int subject3) {
        this.subject3 = subject3;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    public void setAverage(double average) {
        this.average = average;
    }
}
