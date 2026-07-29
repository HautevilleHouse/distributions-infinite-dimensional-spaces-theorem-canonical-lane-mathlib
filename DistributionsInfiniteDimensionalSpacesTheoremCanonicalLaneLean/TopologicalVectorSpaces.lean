import DistributionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean.TestFunctionsAndDistributions

namespace HautevilleHouse
namespace DistributionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean

structure TopologicalVectorSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  linearSpace : AddCommGroup carrier
  scalarAction : Module ℝ carrier
  vectorTopology : Prop
  hausdorff : Prop
  locallyConvex : Prop

structure FrechetSpace extends TopologicalVectorSpace where
  metric : MetricSpace carrier
  complete : Prop
  countableSeminorms : Prop

structure LFspace extends TopologicalVectorSpace where
  inductiveLimit : Prop
  strictInductiveLimit : Prop

structure MontelSpace extends TopologicalVectorSpace where
  montelProperty : Prop

theorem frechet_complete (F : FrechetSpace) : F.complete := F.complete

end DistributionsInfiniteDimensionalSpacesTheoremCanonicalLaneLean
end HautevilleHouse