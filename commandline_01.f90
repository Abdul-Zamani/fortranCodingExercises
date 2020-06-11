      program commandline_01
      
      implicit none
      integer::nArguments

      nArguments = command_argument_count()
      write(*,*)'The number of command line arguments is ',nArguments
       
      end program commandline_01
