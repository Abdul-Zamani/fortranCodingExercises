      program commandline_02
      
      implicit none
      integer::nArguments
      character(len=256)::commandlineArg

      nArguments = command_argument_count()
      write(*,*)'The number of command line arguments is ',&
        nArguments
       
      if(nArguments.ge.1) then
        call get_command_argument(1,commandlineArg)!puts arg into char
        write(*,*)'The first command line argument is &
        ',trim(commandlineArg)
      else
        write(*,*)'No command line arguments to read!'
      endif
        
      end program commandline_02
