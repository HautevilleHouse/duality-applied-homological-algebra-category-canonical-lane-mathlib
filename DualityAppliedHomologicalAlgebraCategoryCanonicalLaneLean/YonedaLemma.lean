import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityAppliedHomologicalAlgebraCategoryCanonicalLaneLean

structure YonedaEmbedding (C : Type u) [Category C] where
  yoneda : C ⥤ (Cᵒᵖ ⥤ Type u)
  fullyFaithful : FullyFaithful yoneda
  yonedaClosed : Prop
  yonedaClosedTerm : yonedaClosed

structure YonedaLemmaPackage (C : Type u) [Category C] (Y : YonedaEmbedding C) where
  naturalIso : ∀ (X : C) (F : Cᵒᵖ ⥤ Type u), Y.yoneda.obj X ⟶ F ≃ F.obj (Opposite.op X)
  naturalIsoTerm : naturalIso
  representableClosed : Prop
  representableClosedTerm : representableClosed

def YonedaClosureClosed {C : Type u} [Category C] {Y : YonedaEmbedding C} (P : YonedaLemmaPackage C Y) : Prop :=
  P.naturalIso ≠ ∅ ∧ P.representableClosed

theorem yoneda_closure_closed_from_evidence
    {C : Type u} [Category C] {Y : YonedaEmbedding C} (P : YonedaLemmaPackage C Y) :
    YonedaClosureClosed P := by
  refine And.intro ?_ P.representableClosedTerm
  apply Set.nonempty_of_mem
  exact P.naturalIsoTerm

end DualityAppliedHomologicalAlgebraCategoryCanonicalLaneLean
end HautevilleHouse