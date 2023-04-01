
program main
    implicit none

    real:: r !cylinder's's radius in meters
    real:: ht !height of the cylinder
    real:: h !height of the liquid inside the cylindrical tank
    real:: volume, vliq

    r=1.
    ht=2.*r
    do
        print*, "Give the value of the height of the liquid in meters"
        read*, h

        if ((h>0.) .and. (h<ht)) then
            exit
            else
                print*, "The value is out of limits."
        end if
    end do

    vliq=volume(r,h)
    write(*,10) "The volume of the liqud is ", vliq, " m**3"

    10 format (a, f4.2, a)
end program

real function volume(r,h)
real::r,h  ! r=1 and h going through the main program to the external function and returns the result
real:: pi=4.*atan(1.)

volume=pi*(r**2)*h/3.

end function

