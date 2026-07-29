import DistributionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean.TheoremStatement

namespace HautevilleHouse
namespace DistributionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean

structure DistributionsSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  linearSpace : TopologicalVectorSpace ℝ carrier

structure AdmittedObject where
  space : DistributionsSpace
  isNuclear : Prop
  nuclearityConclusion : isNuclear
  conclusion : nuclearityConclusion

def BridgeClosed (O : AdmittedObject) : Prop :=
  O.nuclearityConclusion

end DistributionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean
end HautevilleHouse
