
        Program ex3
        implicit none
        character(len=30)::name
!This program asks user to input a name and print what was
!entered
        Write(*,*)'What is your name?'
        Read(*,*)name
        IF (name == 'abdul') then
          Write(*,*)'Hello ', name
        ELSE
          Write(*,*)'I do not know you '
        ENDIF
!
        End program ex3

