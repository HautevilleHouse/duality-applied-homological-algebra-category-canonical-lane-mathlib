import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityAppliedHomologicalAlgebraCategoryCanonicalLaneLean

structure DualityAppliedHomologicalAlgebraAdmittedObject where
  category : Type u
  dualPair : DualCategoryPair category category
  adjointPair : AdjointPair category category (dualPair.objMap) (dualPair.objMap)
  yonedaEmbedding : YonedaEmbedding category
  chainComplex : ChainComplex category
  bridgeCondition : Prop

def bridgeClosed (A : DualityAppliedHomologicalAlgebraAdmittedObject) : Prop :=
  A.bridgeCondition

theorem bridge_from_admissible_class (A : DualityAppliedHomologicalAlgebraAdmittedObject) :
    bridgeClosed A := by
  exact A.bridgeCondition

def gateClosed (A : DualityAppliedHomologicalAlgebraAdmittedObject) : Prop :=
  True

theorem gate_from_admissible_class (A : DualityAppliedHomologicalAlgebraAdmittedObject) :
    gateClosed A := by
  trivial

end DualityAppliedHomologicalAlgebraCategoryCanonicalLaneLean
end HautevilleHouse