import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityAppliedHomologicalAlgebraCategoryCanonicalLaneLean

structure ExactSequencePackage where
  objects : List Type u
  morphisms : List (∀ (A B : Type u), A → B)
  exactnessCondition : Prop
  snakeLemmaApplied : Prop

structure ExactSequenceEvidence (E : ExactSequencePackage) where
  exactnessConditionClosed : E.exactnessCondition
  snakeLemmaAppliedClosed : E.snakeLemmaApplied

def ExactSequenceClosed (E : ExactSequencePackage) : Prop :=
  E.exactnessCondition ∧ E.snakeLemmaApplied

theorem exact_sequence_closed_from_evidence (E : ExactSequencePackage)
    (Ev : ExactSequenceEvidence E) : ExactSequenceClosed E := by
  exact And.intro Ev.exactnessConditionClosed Ev.snakeLemmaAppliedClosed

end DualityAppliedHomologicalAlgebraCategoryCanonicalLaneLean
end HautevilleHouse