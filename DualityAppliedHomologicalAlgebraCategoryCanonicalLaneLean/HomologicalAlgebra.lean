import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityAppliedHomologicalAlgebraCategoryCanonicalLaneLean

structure ChainComplexPackage where
  objects : Nat → Type u
  differentials : ∀ n, objects (n+1) → objects n
  chainComplexCondition : Prop
  homologyGroupDefined : Prop

structure ChainComplexEvidence (C : ChainComplexPackage) where
  chainComplexConditionClosed : C.chainComplexCondition
  homologyGroupDefinedClosed : C.homologyGroupDefined

def ChainComplexClosed (C : ChainComplexPackage) : Prop :=
  C.chainComplexCondition ∧ C.homologyGroupDefined

theorem chain_complex_closed_from_evidence (C : ChainComplexPackage)
    (E : ChainComplexEvidence C) : ChainComplexClosed C := by
  exact And.intro E.chainComplexConditionClosed E.homologyGroupDefinedClosed

end DualityAppliedHomologicalAlgebraCategoryCanonicalLaneLean
end HautevilleHouse