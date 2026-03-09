// CONTROLLER CLASS
// This servlet handles the form submission from main.jsp.
// It reads input, calculates result, stores in model, and forwards to result.jsp.

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.RequestDispatcher;

public class ResultServlet extends HttpServlet {

    // doPost() is called because the form uses method="post"
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // STEP 1: Read form data sent from main.jsp
        String name = request.getParameter("studentName");
        int s1 = Integer.parseInt(request.getParameter("subject1"));
        int s2 = Integer.parseInt(request.getParameter("subject2"));
        int s3 = Integer.parseInt(request.getParameter("subject3"));

        // STEP 2: Calculate total and average
        int total = s1 + s2 + s3;
        double average = total / 3.0;

        // STEP 3: Create the Model object and set all values
        StudentResult student = new StudentResult();
        student.setStudentName(name);
        student.setSubject1(s1);
        student.setSubject2(s2);
        student.setSubject3(s3);
        student.setTotal(total);
        student.setAverage(average);

        // STEP 4: Store the model object in request scope
        // So that result.jsp can access it
        request.setAttribute("student", student);

        // STEP 5: Forward the request to result.jsp using RequestDispatcher
        RequestDispatcher rd = request.getRequestDispatcher("result.jsp");
        rd.forward(request, response);
    }
}
