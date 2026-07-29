import DualityAppliedHomologicalAlgebraCategoryCanonicalLaneLean.YonedaLemma

namespace HautevilleHouse
namespace DualityAppliedHomologicalAlgebraCategoryCanonicalLaneLean

structure AdjointFunctorPackage {Y : YonedaLemmaPackage} where
  leftAdjoint : Type u
  rightAdjoint : Type v
  adjunctionIso : Prop
  unitCounit : Prop
  solutionSetCondition : Prop
  adjunctionIsoTerm : adjunctionIso
  unitCounitTerm : unitCounit
  solutionSetConditionTerm : solutionSetCondition

structure AdjointFunctorEvidence {Y : YonedaLemmaPackage} (A : AdjointFunctorPackage Y) where
  adjunctionIsoClosed : A.adjunctionIso
  unitCounitClosed : A.unitCounit
  solutionSetConditionClosed : A.solutionSetCondition

def AdjointFunctorClosed {Y : YonedaLemmaPackage} (A : AdjointFunctorPackage Y) : Prop :=
  A.adjunctionIso ∧ A.unitCounit ∧ A.solutionSetCondition

theorem adjoint_functor_closed_from_evidence {Y : YonedaLemmaPackage} (A : AdjointFunctorPackage Y) (E : AdjointFunctorEvidence A) :
    AdjointFunctorClosed A := by
  exact And.intro E.adjunctionIsoClosed (And.intro E.unitCounitClosed E.solutionSetConditionClosed)

end DualityAppliedHomologicalAlgebraCategoryCanonicalLaneLean
end HautevilleHouse