import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityAppliedHomologicalAlgebraCategory

structure LimitColimitPackage (C : Type u) [Category.{v} C] (J : Type w) [Category.{w} J] where
  limitCone : Cone (fun (j : J) => (0 : C))
  colimitCocone : Cocone (fun (j : J) => (0 : C))
  limitUniversal : Prop
  colimitUniversal : Prop
  completeness : limitUniversal
  cocompleteness : colimitUniversal

structure LimitColimitEvidence {C : Type u} [Category.{v} C] {J : Type w} [Category.{w} J] (P : LimitColimitPackage C J) where
  limitUniversalClosed : P.limitUniversal
  colimitUniversalClosed : P.colimitUniversal

def LimitColimitClosed {C : Type u} [Category.{v} C] {J : Type w} [Category.{w} J] (P : LimitColimitPackage C J) : Prop :=
  P.limitUniversal ∧ P.colimitUniversal

theorem limit_colimit_closed_from_evidence {C : Type u} [Category.{v} C] {J : Type w} [Category.{w} J] (P : LimitColimitPackage C J) (E : LimitColimitEvidence P) : LimitColimitClosed P := by
  exact And.intro E.limitUniversalClosed E.colimitUniversalClosed

end DualityAppliedHomologicalAlgebraCategory
end HautevilleHouse
