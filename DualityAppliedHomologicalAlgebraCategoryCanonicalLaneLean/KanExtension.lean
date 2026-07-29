import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityAppliedHomologicalAlgebraCategoryCanonicalLaneLean

structure KanExtension (C D A : Type u) [Category C] [Category D] [Category A] (F : C ⥤ A) (K : C ⥤ D) where
  leftKan : D ⥤ A
  rightKan : D ⥤ A
  universalPropertyLeft : leftKan ⊣ (K ⋙ F)
  universalPropertyRight : (K ⋙ F) ⊣ rightKan
  kanClosed : Prop
  kanClosedTerm : kanClosed

structure KanExtensionPackage {C D A : Type u} [Category C] [Category D] [Category A] {F : C ⥤ A} {K : C ⥤ D} (Ext : KanExtension C D A F K) where
  pointwiseFormula : Prop
  preservesLimits : Prop
  preservesColimits : Prop
  pointwiseFormulaTerm : pointwiseFormula
  preservesLimitsTerm : preservesLimits
  preservesColimitsTerm : preservesColimits

def KanExtensionClosed {C D A : Type u} [Category C] [Category D] [Category A] {F : C ⥤ A} {K : C ⥤ D} {Ext : KanExtension C D A F K} (P : KanExtensionPackage Ext) : Prop :=
  P.pointwiseFormula ∧ P.preservesLimits ∧ P.preservesColimits

theorem kan_extension_closed_from_evidence
    {C D A : Type u} [Category C] [Category D] [Category A] {F : C ⥤ A} {K : C ⥤ D} {Ext : KanExtension C D A F K}
    (P : KanExtensionPackage Ext) (E : P.pointwiseFormula ∧ P.preservesLimits ∧ P.preservesColimits) :
    KanExtensionClosed P := by
  exact E

end DualityAppliedHomologicalAlgebraCategoryCanonicalLaneLean
end HautevilleHouse