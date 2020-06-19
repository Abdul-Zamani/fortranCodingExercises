      module moduleExample_02_mod
      
      implicit none

      !Procedure Interfaces -- A Programming Environment
      
      interface print_matrix
        !on-the-fly distinguishability of types
        module procedure print_matrix_int
        module procedure print_matrix_real
      end interface print_matrix


      contains

      subroutine print_matrix_int(matrix,header)

      implicit none
      
      !print matrix with integer elements
      !works for dimension 6 or less
      
      integer,dimension(:,:),intent(in)::matrix
      integer::i      
      !optional argument
      character(len=*),intent(in),optional::header    

    
2000 format(1x,A) 

      !present returns true or false
      !on 1 line, dont need then/endif
      if(present(header)) write(*,2000) trim(header) !trims char

      !argument 'header' may not be sent, write a conditional
       
1000 format(i10,4x,i10,4x,i10,4x,i10,4x,i10,4x,i10)
      do i=1,size(matrix,1)
        write(*,1000)matrix(i,:)!i in row, all elements in column
      enddo

      return
        
      end subroutine print_matrix_int


      subroutine print_matrix_real(matrix,header)

      implicit none
      
      !print matrix with real elements
      !works for dimension 6 or less
      
      !assumed size
      real,dimension(:,:),intent(in)::matrix
      !optional argument
      character(len=*),intent(in),optional::header    
      
      integer::i      
  

1000 format(f10.5,4x,f10.5,4x,f10.5,4x,f10.5,4x,f10.5,4x,f10.5) 

2000 format(1x,A) 

      !present returns true or false
      !on 1 line, dont need then/endif
      if(present(header)) write(*,2000) trim(header) !trims char

      !argument 'header' may not be sent, write a conditional
      
      do i=1,size(matrix,1)
        write(*,1000)matrix(i,:)!i in row, all elements in column
      enddo

      return
        
      end subroutine print_matrix_real


      end module moduleExample_02_mod

      program moduleExample_02

      use moduleExample_02_mod

      implicit none
      
      real, dimension(5,5)::matA,matB,matC
       
      integer, dimension(5,5)::matI,matJ,matK

      call random_number(matA)
      call random_number(matB)

      !prints contiguous memory
      write(*,*)'Matrix A: '
      write(*,*)matA

      write(*,*)'Formatted Matrix A:'
      call print_matrix_real(matA)
 
      write(*,*)'Formatted Matrix B:'
      call print_matrix_real(matB)

      call random_number(matC)
      matI = matC*100 !converts to integers

      !fill matI and matJ with random numbers 
      
      !write matI unformatted
      write(*,*)'Matrix I: '
      write(*,*)matI

      !format
      write(*,*)'Formatted Matrix I:'
      call print_matrix_int(matI)
    
      write(*,*)'Using procedure interface:'

      write(*,*)'Formatted Matrix A:'
      call print_matrix(matA)
 
      write(*,*)'Formatted Matrix B:'
      call print_matrix(matB)

      write(*,*)'Formatted Matrix I:'
      call print_matrix(matI)
    
      !dont need real or int
      !compiler knows which one to use

      !form matC = sqrt(matA)

      matC = sqrt(matA)
      write(*,*)'Matrix C'
      !header added
      call print_matrix(matC, 'here is matrix C in print routine...')

      end program moduleExample_02


