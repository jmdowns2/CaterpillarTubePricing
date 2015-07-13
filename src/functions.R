getMaterials <- function(assemblyId)
{
  materials <- bom[bom$tube_assembly_id == assemblyId,]
  materials
}

getComp <- function(compId)
{
  comp <- components[components$component_id  == compId,]
  comp
}

getTube <- function(assemblyId)
{
  tube <- tubes[tubes$tube_assembly_id  == assemblyId,]
  tube
}
