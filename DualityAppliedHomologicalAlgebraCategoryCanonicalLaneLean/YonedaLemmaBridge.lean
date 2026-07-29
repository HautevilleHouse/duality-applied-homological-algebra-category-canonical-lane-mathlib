import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityAppliedHomologicalAlgebraCategory

structure YonedaLemmaPackage (C : Type u) [Category.{v} C] where
  yonedaEmbedding : Functor C (Presheaf C)
  yonedaLemma : Prop
  fullFaithfulness : Prop
  lemmaClosed : yonedaLemma ∧ fullFaithfulness

structure YonedaLemmaEvidence {C : Type u} [Category.{v} C] (P : YonedaLemmaPackage C) where
  yonedaLemmaClosed : P.yonedaLemma
  fullFaithfulnessClosed : P.fullFaithfulness

def YonedaLemmaClosed {C : Type u} [Category.{v} C] (P : YonedaLemmaPackage C) : Prop :=
  P.yonedaLemma ∧ P.fullFaithfulness

theorem yoneda_lemma_closed_from_evidence {C : Type u} [Category.{v} C] (P : YonedaLemmaPackage C) (E : YonedaLemmaEvidence P) : YonedaLemmaClosed P := by
  exact And.intro E.yonedaLemmaClosed E.fullFaithfulnessClosed

end DualityAppliedHomologicalAlgebraCategory
end HautevilleHouse
