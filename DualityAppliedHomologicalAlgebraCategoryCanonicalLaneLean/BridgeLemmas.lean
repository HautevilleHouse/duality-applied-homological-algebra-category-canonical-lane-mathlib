import DualityAppliedHomologicalAlgebraCategoryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DualityAppliedHomologicalAlgebraCategoryCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CategoryWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DualityAppliedHomologicalAlgebraCategoryCanonicalLaneLean
end HautevilleHouse