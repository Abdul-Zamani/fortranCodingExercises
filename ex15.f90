      program ex15
        
      implicit none
      real :: a, b, x, y
      real, dimension(2) :: vec1, vec2, sumvecc
      real, dimension(2) :: sumvc
      real :: dist, areacirc
    
      integer::i  
      character(len=512)::fileName,outputFile
      integer,parameter::IOut=6

      logical :: fileExist
    
75    format(1x,A29,1x,A) 
 
      write(*,*) 
      print*,'Format Note: Each column should correspond to a vector. &
       If the ouput seems erroneous, the file may be formatted &
       incorrectly.'
      write(*,*)
      print*,'Enter a file name with the extension:'
      read(*,*),fileName

      write(*,*)

      INQUIRE(FILE=fileName, EXIST=fileExist)

      if(fileExist==.true.) then
        write(*,*)'This input file exists.'
        write(*,*)
        print*,'Enter a name for the output file including &
          the extension:'
        read(*,*),outputFile

        open(unit = 1,file = fileName)
        open(unit = 10,file= outputFile)
        do i = 1,2
          read(1,*) vec1(i),vec2(i)
        endDo
        
        write(10,*)'Input vectors:'
        write(10,*)'vec1: ',vec1
        write(10,*)'vec2: ',vec2
        
        sumvecc=sumvec(vec1,vec2)
        write(10,*)'The sum of both vectors is: ', sumvecc

        dist = distance2(vec1,vec2)
        write(10,*)'distance between vec1 and vec2',dist
        
        close(1)
        close(10)         

        write(*,*)
        write(*,75)'The data has been written to: ',outputFile

      else if(fileExist==.false.) then
        write(*,*)'File does not exist. Exiting program.'
        goto 999        
      endif
 
      999 continue     
 
       contains 
       
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

      function distance2(vec1,vec2) result(dist2)
        real:: dist2
        real, dimension(2) :: vec, vec1, vec2
        dist2 = sqrt(((vec1(1)-vec2(1))**2)+((vec1(2)-vec2(2))**2))
        return
      end function distance2

      end program ex15
