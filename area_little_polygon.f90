program area_little_polygon

    implicit none

    integer, parameter :: n = 6
    real, parameter :: circle_diameter = 1

    real :: bigTriangleCorner
    real :: littleTriangleCorner

    real :: adjacentSide
    real :: oppositeSide
    real :: areaSize
    real :: totalArea

    bigTriangleCorner = 360 / n
    littleTriangleCorner = (bigTriangleCorner / 2) * (3.14/180)

    adjacentSide = cos(littleTriangleCorner) * circle_diameter
    oppositeSide = sin(littleTriangleCorner) / circle_diameter
    areaSize = ( adjacentSide * oppositeSide ) / 2

    totalArea = ( areaSize * 2 ) * n

    print *, totalArea

end program area_little_polygon