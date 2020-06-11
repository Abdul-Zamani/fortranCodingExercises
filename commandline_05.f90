      program commandline_05
      
      implicit none
      integer::nArguments,i
      real::realTemp,total
      character(len=256)::commandlineArg

      nArguments = command_argument_count()
      write(*,*)'The number of command line arguments is ',&
        nArguments
      write(*,*)       

      total = 0
      do i = 1,nArguments
        call get_command_argument(i,commandlineArg)
        write(*,*)'Argument number',i,': ',trim(commandlineArg)
                
        read(commandlineArg,*)realTemp
        total = total + realTemp

      enddo
        
      write(*,*)' The total sum of all the reals is: ',total

        
      end program commandline_05
