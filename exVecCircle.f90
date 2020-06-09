      program exVecCircle
      implicit none
      real :: a, b, x, y
      real, dimension(2) :: vec1, vec2, sumvecc
      real, dimension(2) :: sumvc
      real :: dist, areacirc
      !You must define the input variables prior to defining the arrays
      
      write(*,*)'Enter the elements for vector #1: '
      read*,a,b
      write(*,*)'Enter the elements for vector #2: '
      read*,x,y
      vec1=(/a,b/)
      vec2=(/x,y/) 
      !
      !You must define the arrays in terms of the fxns
      !  
      sumvecc=sumvec(vec1,vec2)
      write(*,*)'The sum of both vectors is: ', sumvecc

      dist = distance1(vec1)
      print*,'distance of vec1',dist

      areacirc = areacircle(dist)
      print*,'area of circle using vec1 norm',areacirc       

       contains 
      !Subroutine should be defined in terms of another expression
       function sumvec(vec1,vec2) result(sumvc) 
        integer :: i
        real, dimension(2), intent(in) :: vec1
        real, dimension(2), intent(in) :: vec2
        real, dimension(2)             :: sumvc
        do i =1,3
        sumvc(i) = vec1(i) + vec2(i)
        enddo
        return
      end function

      function distance1(vec1) result(dist1)
        real:: dist1
        real, dimension(2) :: vec, vec1, vec2
        dist1 = sqrt(((vec1(1))**2)+((vec1(2))**2))
        return
      end function distance1

      function distance2(vec1,vec2) result(dist2)
        real:: dist2
        real, dimension(2) :: vec, vec1, vec2
        dist2 = sqrt(((vec1(1)-vec2(1))**2)+((vec1(2)-vec2(2))**2))
        return
      end function distance2

      function areacircle(r) result(area)
          real:: r, pi, area
          pi=3.1415
          area = pi*(r**2)
          return
      end function areacircle
         
      end program exVecCircle
