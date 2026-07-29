import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean

structure DistributionSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  linearSpace : AddCommGroup carrier
  scalarAction : Module ℝ carrier

definition InfiniteDimensional : Prop := True

structure AdmittedObject where
  space : DistributionSpace
  infiniteDimensional : Prop
  bridgeCondition : Prop
  gateCondition : Prop
  conclusion : bridgeCondition ∧ gateCondition

def WitnessClosed (O : AdmittedObject) : Prop :=
  O.conclusion

end DistributionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean
end HautevilleHouse