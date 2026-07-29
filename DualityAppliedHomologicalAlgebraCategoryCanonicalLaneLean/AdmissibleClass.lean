import DualityAppliedHomologicalAlgebraCategoryCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace DualityAppliedHomologicalAlgebraCategoryCanonicalLaneLean

structure AdmissibleClass where
  object : CategoryAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CategoryWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DualityAppliedHomologicalAlgebraCategoryCanonicalLaneLean
end HautevilleHouse