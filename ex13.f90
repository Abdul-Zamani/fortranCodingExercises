      program ex13
      
      implicit none
      
      character(len=512)::fileName
      character(len=64)::nombre

75    format(A5,1x,A,A) 

      print*,'Enter a file name with the extension: '
      read(*,*),fileName

      print*,'Enter your name: '
      read(*,*),nombre
      
      open(unit = 1,file = fileName)

      !writes on same line
      write(1,75,advance='no')'Hello',TRIM(nombre),'.'

      close(1)

      end program ex13
