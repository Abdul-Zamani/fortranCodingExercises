      program ex13
      
      implicit none
      
      character(len=512)::fileName
      character(len=64)::nombre
      character(len=1)::answer
      integer,parameter::IOut=6

75    format(A5,1x,A,A) 

      print*,'Enter your name: '
      read(*,*),nombre

      print*,"Do you want write to a file?&
         (enter 'y' or 'n')"
      read(*,*),answer

      if(answer=='y') then
        print*,'Enter a file name with the extension: '
        read(*,*),fileName
        open(unit = 1,file = fileName)
        !writes on same line
        write(1,75,advance='no')'Hello',TRIM(nombre),'.'
        close(1)
      else if(answer=='n') then
        write(*,75)'Hello',TRIM(nombre),'.'
      else
        write(*,*)'Problem reading I/O selection'
      endif       

      end program ex13
