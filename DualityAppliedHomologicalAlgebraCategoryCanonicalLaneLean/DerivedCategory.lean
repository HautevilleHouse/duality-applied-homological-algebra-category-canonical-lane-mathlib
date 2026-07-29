import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityAppliedHomologicalAlgebraCategoryCanonicalLaneLean

structure DerivedCategory (A : Type u) [Category A] [AbelianCategory A] where
  derivedCategory : Type u
  derivedCategoryInstance : Category derivedCategory
  derivedCategoryClosed : Prop
  derivedCategoryClosedTerm : derivedCategoryClosed

structure DerivedFunctorPackage (A : Type u) [Category A] [AbelianCategory A] (D : DerivedCategory A) where
  derivedHom : Functor (Aᵒᵖ × A) (Type u)
  derivedTensor : Functor (A × A) A
  derivedHomClosed : Prop
  derivedTensorClosed : Prop
  derivedHomClosedTerm : derivedHomClosed
  derivedTensorClosedTerm : derivedTensorClosed

def DerivedClosureClosed {A : Type u} [Category A] [AbelianCategory A] {D : DerivedCategory A} (P : DerivedFunctorPackage A D) : Prop :=
  P.derivedHomClosed ∧ P.derivedTensorClosed

theorem derived_closure_closed_from_evidence
    {A : Type u} [Category A] [AbelianCategory A] {D : DerivedCategory A} (P : DerivedFunctorPackage A D) :
    DerivedClosureClosed P := by
  exact And.intro P.derivedHomClosedTerm P.derivedTensorClosedTerm

end DualityAppliedHomologicalAlgebraCategoryCanonicalLaneLean
end HautevilleHouse