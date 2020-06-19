      module ex17_mod

      type myComplex

        real :: RePart, ImPart

      end type myComplex
  
      !operator interfaces 

      interface operator (+) !plus symbol

        !fxn takes arguments and maps to binary operator
        module procedure fxn_add_myComplex 

      end interface        

      !module procedures
 
      contains

      !prints myComplex type
      subroutine print_myComplex(val)
      
      implicit none
      type(myComplex), intent(in) :: val

 1000 Format(1x,'Real Part:',f10.5,' Imaginary Part:',f10.5)

      write(*,1000) val%RePart,val%ImPart
      
      return
      end subroutine print_myComplex      

      !adds two myComplex types
      subroutine add_myComplex(val1,val2,valSum)
      
      implicit none
      type(myComplex), intent(in) :: val1,val2
      type(myComplex), intent(out) :: valSum

      valSum%RePart = val1%RePart + val2%RePart
      valSum%ImPart = val1%ImPart + val2%ImPart

      return
      end subroutine add_myComplex      

      !a function works as well
      function fxn_add_myComplex(val1,val2) result(valSum)
      
      implicit none
      type(myComplex), intent(in) :: val1,val2
      
      !PGI allows for result to be declared intent(out)
      !GNU Fortran does not. function results are already
      !intended to be passed out.
      !Declaring intent(out) for dummy argument.

      !type(myComplex), intent(out) :: valSum
      
      type(myComplex) :: valSum

      valSum%RePart = val1%RePart + val2%RePart
      valSum%ImPart = val1%ImPart + val2%ImPart

      return
      end function fxn_add_myComplex      

      end module ex17_mod

      program ex17

      use ex17_mod

      !This program ask for the user to input 2 complex numbers
      !and loads them into a derived data type called myComplex.
      !The numbers are echoed, added, and prints the sum.

      implicit none

      type(myComplex)::num1,num2,sum12

      write(*,*)'Enter the first complex number starting &
        with the real part followed by the imaginary part:'
      read(*,*)num1%RePart,num1%ImPart
      write(*,*)

      write(*,*)'Enter the second complex number starting &
        with the real part followed by the imaginary part:'
      read(*,*)num2%RePart,num2%ImPart
      write(*,*)

      write(*,*)'1st complex number:'
      call print_myComplex(num1)
      write(*,*)

      write(*,*)'2nd complex number:'
      call print_myComplex(num2)
      write(*,*)

      call add_myComplex(num1,num2,sum12)
      write(*,*)'The sum of the two complex numbers:'
      call print_myComplex(sum12)
      write(*,*)

      !with function, specify sum12
      sum12 = fxn_add_myComplex(num1,num2)
      write(*,*)'Sum of the complex numbers using a function:'
      call print_myComplex(sum12)
      write(*,*)

      !function, no need to specify sum12 because it's a result
      write(*,*)'Sum of the complex numbers using a function, again:'
      call print_myComplex(fxn_add_myComplex(num1,num2))
      write(*,*)

      !interface to function, expects arguments and adds them all
      write(*,*)'Using interface...'
      write(*,*)'sum12 = num1 + sum12'
      sum12 = num1 + sum12
      call print_myComplex(sum12)
      write(*,*)     
 
      write(*,*)'Do it again...with 3 values to add'
      write(*,*)'sum12 = num1 + num1 + num2'  
      sum12 = num1 + num1 + num2 
      call print_myComplex(sum12)

      end program ex17 
      
