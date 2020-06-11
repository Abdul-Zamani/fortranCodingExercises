!
!     This program takes three command line arguments.
!     The first and second arguments are bond lengths.
!     The third argument is an angle between two bonds.
!     Assuming a triatomic case, this program computes
!     the distance between the two atoms bonded to a 
!     third, central atom. 


      program atomicDistance

      implicit none
      real::bond1, bond2, angle, distance
      character(len=512)::b1,b2,a
      real::pi

      pi=3.1415926

      call get_command_argument(1,b1) 
      call get_command_argument(2,b2)
      call get_command_argument(3,a)

      print*,'length of bond connecting atoms 1 and 2: ',trim(b1)
      read(b1,*)bond1
      print*,'length of bond connecting atoms 1 and 3: ',trim(b2)
      read(b2,*)bond2
      print*,'angle in degrees: ',trim(a)
      read(a,*)angle

      !law of cosines
      distance = (((bond1**2) + (bond2**2) - (2*(bond1)*(bond2)*&
        cos(angle*(pi/180.0)))))**0.5
       
      print*,'distance between atoms 2 and 3: ',distance 

      end program atomicDistance
