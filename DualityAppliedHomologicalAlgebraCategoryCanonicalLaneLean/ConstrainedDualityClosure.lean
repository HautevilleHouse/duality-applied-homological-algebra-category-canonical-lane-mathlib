import canonicalLaneMathlib.AdmissibleClass
import DualityAppliedHomologicalAlgebraCategoryCanonicalLaneLean.DualAdmissibleClassBridge

namespace HautevilleHouse
namespace DualityAppliedHomologicalAlgebraCategoryCanonicalLaneLean

def ConstrainedDualityClosure (A : DualityAppliedHomologicalAlgebraAdmittedObject) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_duality_endgame (A : DualityAppliedHomologicalAlgebraAdmittedObject) :
    ConstrainedDualityClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DualityAppliedHomologicalAlgebraCategoryCanonicalLaneLean
end HautevilleHouse