      program commandline_04
      
      implicit none
      integer::nArguments,i,intTemp,total
      character(len=256)::commandlineArg

      nArguments = command_argument_count()
      write(*,*)'The number of command line arguments is ',&
        nArguments
      write(*,*)       

      total = 0
      do i = 1,nArguments
        call get_command_argument(i,commandlineArg)
        write(*,*)'Argument number',i,': ',trim(commandlineArg)
                
        read(commandlineArg,*)intTemp
        total = total + intTemp

      enddo
        
      write(*,*)' The total sum of all the integers is: ',total

        
      end program commandline_04
