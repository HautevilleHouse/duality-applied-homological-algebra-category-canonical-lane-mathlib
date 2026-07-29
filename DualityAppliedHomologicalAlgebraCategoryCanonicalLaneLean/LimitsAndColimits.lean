import DualityAppliedHomologicalAlgebraCategoryCanonicalLaneLean.AdjointFunctorTheorem

namespace HautevilleHouse
namespace DualityAppliedHomologicalAlgebraCategoryCanonicalLaneLean

structure LimitsPackage where
  limitExists : Prop
  limitUniversal : Prop
  colimitExists : Prop
  colimitUniversal : Prop
  limitExistsTerm : limitExists
  limitUniversalTerm : limitUniversal
  colimitExistsTerm : colimitExists
  colimitUniversalTerm : colimitUniversal

structure LimitsEvidence (L : LimitsPackage) where
  limitExistsClosed : L.limitExists
  limitUniversalClosed : L.limitUniversal
  colimitExistsClosed : L.colimitExists
  colimitUniversalClosed : L.colimitUniversal

def LimitsClosed (L : LimitsPackage) : Prop :=
  L.limitExists ∧ L.limitUniversal ∧ L.colimitExists ∧ L.colimitUniversal

theorem limits_closed_from_evidence (L : LimitsPackage) (E : LimitsEvidence L) :
    LimitsClosed L := by
  exact And.intro E.limitExistsClosed (And.intro E.limitUniversalClosed (And.intro E.colimitExistsClosed E.colimitUniversalClosed))

end DualityAppliedHomologicalAlgebraCategoryCanonicalLaneLean
end HautevilleHouse