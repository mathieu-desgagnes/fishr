# erreur

    Code
      biomass_index("five", 10)
    Condition
      Error in `cpue * area_swept`:
      ! non-numeric argument to binary operator

# biomasse warns when catch and effort lengths differ

    Code
      biomass_index(c(100, 200, 300), c(10, 20))
    Condition
      Warning in `cpue * area_swept`:
      longer object length is not a multiple of shorter object length
    Output
      [1] 1000 4000 3000

# biomasse avec différente options de verbose

    Code
      biomass_index(cpue = 5, area_swept = 100)
    Output
      [1] 500

