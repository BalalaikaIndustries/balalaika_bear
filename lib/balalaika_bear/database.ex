defmodule BalalaikaBear.Database do
  use BalalaikaBear.Macro.API, namespace: "database",
                               methods: ["getChairs", "getCities", "getCitiesById", "getCountries", 
                                         "getCountriesById", "getFaculties", "getRegions", "getSchoolClasses",
                                         "getSchools", "getStreetsById", "getUniversities"]
  @moduledoc false
end
