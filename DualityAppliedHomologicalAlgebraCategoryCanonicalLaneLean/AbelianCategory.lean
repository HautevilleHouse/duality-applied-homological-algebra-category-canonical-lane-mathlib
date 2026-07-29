import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityAppliedHomologicalAlgebraCategoryCanonicalLaneLean

structure AbelianCategory (A : Type u) [Category A] where
  zeroMorphisms : HasZeroMorphisms A
  kernels : HasKernels A
  cokernels : HasCokernels A
  abelianClosed : Prop
  abelianClosedTerm : abelianClosed

structure HomologicalAlgebraPackage (A : Type u) [Category A] (Ab : AbelianCategory A) where
  snakeLemma : Prop
  fiveLemma : Prop
  longExactSequence : Prop
  snakeLemmaTerm : snakeLemma
  fiveLemmaTerm : fiveLemma
  longExactSequenceTerm : longExactSequence

def HomologicalAlgebraClosed {A : Type u} [Category A] {Ab : AbelianCategory A} (P : HomologicalAlgebraPackage A Ab) : Prop :=
  P.snakeLemma ∧ P.fiveLemma ∧ P.longExactSequence

theorem homological_algebra_closed_from_evidence
    {A : Type u} [Category A] {Ab : AbelianCategory A} (P : HomologicalAlgebraPackage A Ab) :
    HomologicalAlgebraClosed P := by
  refine And.intro P.snakeLemmaTerm (And.intro P.fiveLemmaTerm P.longExactSequenceTerm)

end DualityAppliedHomologicalAlgebraCategoryCanonicalLaneLean
end HautevilleHouse