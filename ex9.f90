
      program ex9
      implicit none
      real r, areacircle, area
      read*,r
      area = areacircle(r)
      write(*,*)area
      endprogram ex9
        
        function areacircle(r)
          real r, pi, areacircle
          pi=3.1415
          areacircle = pi*(r**2)
          return
        end function areacircle
         
          
