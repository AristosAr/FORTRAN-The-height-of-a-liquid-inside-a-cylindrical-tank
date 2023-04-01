
program main
    implicit none

    real:: r !aktina kilindrou se meters
    real:: ht !ipsos kilindrikou doxiou
    real:: h !stathmi igrou
    real:: volume, vigrou

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

    vigrou=volume(r,h)
    write(*,10) "The volume of the liqud is ", vigrou, " m**3"

    10 format (a, f4.2, a)
end program

real function volume(r,h)
real::r,h  !to r=1 και το h perna apo kyrios programma
real:: pi=4.*atan(1.)

volume=pi*(r**2)*h/3.

end function

