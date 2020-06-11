      program commandline_03
      
      implicit none
      integer::nArguments,i
      character(len=256)::commandlineArg

      nArguments = command_argument_count()
      write(*,*)'The number of command line arguments is ',&
        nArguments
      write(*,*)       

      do i = 1,nArguments
        call get_command_argument(i,commandlineArg)
        write(*,*)'Argument number',i,': ',trim(commandlineArg)
      enddo
        
      end program commandline_03
