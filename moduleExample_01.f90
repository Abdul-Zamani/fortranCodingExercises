      module moduleExample_01_mod
      
      implicit none

      contains

      !wont need ndim if assumed size
      subroutine print_matrix(matrix)

      implicit none
      
      !works for dimension 6 or less
      
      !assumed size
      real,dimension(:,:),intent(in)::matrix
    
      integer::i      
  
1000 Format(f10.5,4x,f10.5,4x,f10.5,4x,f10.5,4x,f10.5,4x,f10.5)
      do i=1,size(matrix,1)
        write(*,1000)matrix(i,:)!i in row, all elements in column
      enddo

      return
        
      end subroutine print_matrix

      end module moduleExample_01_mod

      program moduleExample_01

      use moduleExample_01_mod

      implicit none
      
      real, dimension(3,3)::matA,matB,matC

      !not really random, stays consistent with shell
      call random_number(matA)
      call random_number(matB)

      !prints contiguous memory
      write(*,*)'Matrix A: '
      write(*,*)matA

      write(*,*)'Formatted Matrix A:'
      call print_matrix(matA)
 
      write(*,*)'Formatted Matrix B:'
      call print_matrix(matB)
      
      end program moduleExample_01


