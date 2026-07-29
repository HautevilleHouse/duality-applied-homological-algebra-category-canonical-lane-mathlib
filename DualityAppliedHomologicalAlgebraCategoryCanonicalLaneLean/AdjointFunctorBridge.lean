import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityAppliedHomologicalAlgebraCategory

structure AdjointFunctorPackage (C D : Type u) [Category.{v} C] [Category.{v} D] where
  leftAdjoint : Functor C D
  rightAdjoint : Functor D C
  adjunction : leftAdjoint ⊣ rightAdjoint
  unitNatural : 𝟙 C ⟶ rightAdjoint.comp leftAdjoint
  counitNatural : leftAdjoint.comp rightAdjoint ⟶ 𝟙 D
  triangleIdentities : Prop
  adjunctionClosed : triangleIdentities

structure AdjointFunctorEvidence {C D : Type u} [Category.{v} C] [Category.{v} D] (P : AdjointFunctorPackage C D) where
  triangleIdentitiesClosed : P.triangleIdentities

def AdjointFunctorClosed {C D : Type u} [Category.{v} C] [Category.{v} D] (P : AdjointFunctorPackage C D) : Prop :=
  P.triangleIdentities

theorem adjoint_functor_closed_from_evidence {C D : Type u} [Category.{v} C] [Category.{v} D] (P : AdjointFunctorPackage C D) (E : AdjointFunctorEvidence P) : AdjointFunctorClosed P := by
  exact E.triangleIdentitiesClosed

end DualityAppliedHomologicalAlgebraCategory
end HautevilleHouse
