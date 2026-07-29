import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityAppliedHomologicalAlgebraCategoryCanonicalLaneLean

def ConstrainedDualityAppliedHomologicalAlgebraClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_duality_applied_homological_algebra_endgame (A : AdmissibleClass) :
    ConstrainedDualityAppliedHomologicalAlgebraClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DualityAppliedHomologicalAlgebraCategoryCanonicalLaneLean
end HautevilleHouse