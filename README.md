# Static-array-using-implied-do-and-external-function

program main
    implicit none

   real:: A(20), z,x
   integer:: i
   real:: f,g
   
   A=0 
   A=[(i, i=1,size(A),1)]   

   do i=1,size(A)
   print*, A(i)
   end do
   print*,

   do i=1,size(A)
        A(i)=g(i,x)
   end do

   do i=1,size(A)
     z=A(i)
      print*, f(z)   
   end do

end program

real function f(z)   
real:: z
f=sqrt(z**2+10.)
end function

real function g(i,x)
real::x
integer:: i

x=0.5
g=x*10.*float(i)
end function
