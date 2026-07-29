import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityAppliedHomologicalAlgebraCategoryCanonicalLaneLean

structure AdjointFunctorPair (C D : Type u) [Category C] [Category D] where
  leftAdjoint : C ⥤ D
  rightAdjoint : D ⥤ C
  unitCounitAdj : leftAdjoint ⊣ rightAdjoint
  adjunctionClosed : Prop
  adjunctionClosedTerm : adjunctionClosed

structure AdjointClosurePackage (C D : Type u) [Category C] [Category D] (F : AdjointFunctorPair C D) where
  unitIsIso : Prop
  counitIsIso : Prop
  preservesLimits : Prop
  preservesColimits : Prop
  unitIsIsoTerm : unitIsIso
  counitIsIsoTerm : counitIsIso
  preservesLimitsTerm : preservesLimits
  preservesColimitsTerm : preservesColimits

def AdjointClosureClosed {C D : Type u} [Category C] [Category D] {F : AdjointFunctorPair C D} (P : AdjointClosurePackage C D F) : Prop :=
  P.unitIsIso ∧ P.counitIsIso ∧ P.preservesLimits ∧ P.preservesColimits

theorem adjoint_closure_closed_from_evidence
    {C D : Type u} [Category C] [Category D] {F : AdjointFunctorPair C D}
    (P : AdjointClosurePackage C D F) (E : P.unitIsIso ∧ P.counitIsIso ∧ P.preservesLimits ∧ P.preservesColimits) :
    AdjointClosureClosed P := by
  exact E

end DualityAppliedHomologicalAlgebraCategoryCanonicalLaneLean
end HautevilleHouse