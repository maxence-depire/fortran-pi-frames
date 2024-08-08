program area_big_polygon

    implicit none

    integer, parameter :: n = 6
    double precision, parameter :: circle_diameter = 1

    double precision :: bigTriangleCorner
    double precision :: littleTriangleCorner

    double precision :: adjacentSide
    double precision :: oppositeSide
    double precision :: areaSize
    double precision :: totalArea

    bigTriangleCorner = 360 / n
    littleTriangleCorner = (bigTriangleCorner / 2) * (3.14/180)

    adjacentSide = circle_diameter
    oppositeSide = tan(littleTriangleCorner) / circle_diameter

    areaSize = ( adjacentSide * oppositeSide ) / 2
    totalArea = ( areaSize * 2 ) * n

    print *, totalArea

end program area_big_polygon