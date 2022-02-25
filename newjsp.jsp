<%-- Document : newjsp Created on : Feb 25, 2022, 7:11:14 PM Author : LENOVO
--%> <%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <style>
        body
            {
                background-image:linear-gradient( #1a2a6c , #b1038e8a);
              background-size: cover ;  
              background-repeat: no-repeat;
             width: 100vw;
             height: 100vh;
              
            }
            a
            {
                text-decoration: none;
                color: darkblue;
                background: red;
               
                margin-top: 100px;
                left: 30px;
                position: absolute;
                
                transition: 4s ease-in;
                
            }
            a:hover
            {
                background-color: pink;
                color: blanchedalmond;
                
            }
      div {
        position: relative;
        top: 200px;
        left: 300px;
        color: peru;
        font-size: 60px;
        font-weight: bolder;
      }
      div span {
       
        color:darkblue;
        font-size: 70px;
        letter-spacing: 5px;
      }
    </style>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>JSP Page</title>
  </head>
  <body>
    <div>
      <% Integer choice=Integer.parseInt(request.getParameter("choice"));%> 
      <%
      Integer number=Integer.parseInt(request.getParameter("number"));%>
       <%
      if(choice==1) 
      { 
          int sum=0;
          int n=number;
          while(number>0)
          {
              int rem=number%10;
              sum=sum+rem*rem*rem;
              number/=10;
              
          }
         if(sum==n)
         {
             out.print("<span>It's Armstrong: </span>"+sum);
         }
         else
             out.print("<span>It's Not Armstrong:</span>"+n);
      } 
      else if(choice==2) 
      { 
        if(number<10)
        out.println("Total digit:"+1);
        else  if(number<100)
        out.println("Total digit:"+2);
        else if(number<1000)
        out.println("Total digit:"+3);
        else if(number<10000)
        out.println("Total digit:"+4);
        
    
      }
       else if(choice==3) 
       { 
           int i=1;
      for( i=2;i<number;i++)
       {
          if(number%i==0) 
          break;
       } 
      if(number==i)
      out.println("<span>It's prime number:</span>"+number); 
      else
      out.println("<span>It's not prime number:</span>"+number);
     }
      else if(choice==4)
      
      {
        int fact=1;
      for(int i=1;i<number;i++)
      fact=fact*i;
      out.println("<span>Factorial is: </span>"+fact);
      
    }
    else if(choice==5)
    {
      int sum=0;
      while(number>0)
      {
        int rem=number%10;
        sum = sum * 10 + rem;
        number/=10;
      }
      out.println("<span>Reverse is:</span>"+sum);
    }
    else if(choice==6)
    {
      int sum=0;
      int n=number;
      while(number>0)
      {
        int rem=number%10;
        sum = sum * 10 + rem;
        number/=10;
      }
      if(n==sum)
      out.println("<span>It's Palindrome:</span>"+n);
      else
      out.println("<span>It's Not Palindrome</span>:"+n);
    }
    else if(choice==7)
    {
      if(number%2==0)
          out.print("It's Even Number");
      else
          out.print("It's not Even number");
    }
    else if(choice==8)
    {
        if(number%2!=0)
            out.print("It's odd number");
        else
            out.print("It's not odd number");
    }
      %>
      <% out.println("<a href='newhtml.html' value='click'>Click To go back!!</a>");
      %>
    </div>
  </body>
</html>
