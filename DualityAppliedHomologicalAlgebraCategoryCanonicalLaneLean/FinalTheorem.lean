import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DualityAppliedHomologicalAlgebraCategory.AdjointFunctorBridge
import HautevilleHouse.DualityAppliedHomologicalAlgebraCategory.YonedaLemmaBridge
import HautevilleHouse.DualityAppliedHomologicalAlgebraCategory.LimitColimitBridge

namespace HautevilleHouse
namespace DualityAppliedHomologicalAlgebraCategory

def ConstrainedDualityAppliedHomologicalAlgebraCategoryClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_duality_applied_homological_algebra_category_endgame (A : AdmissibleClass) :
    ConstrainedDualityAppliedHomologicalAlgebraCategoryClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DualityAppliedHomologicalAlgebraCategory
end HautevilleHouse
