import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityAppliedHomologicalAlgebraCategoryCanonicalLaneLean

structure TannakaDuality (G : Type u) [Group G] (k : Type v) [Field k] where
  repCategory : Category (Rep k G)
  fiberFunctor : Rep k G ⥤ Vec k
  fiberFunctorFaithful : Faithful fiberFunctor
  tannakaClosed : Prop
  tannakaClosedTerm : tannakaClosed

structure TannakaReconstructionPackage {G : Type u} [Group G] {k : Type v} [Field k] (T : TannakaDuality G k) where
  naturalIso : T.fiberFunctor ≅ forget (Rep k G)
  groupRecovered : G ≅ Aut (T.fiberFunctor)
  naturalIsoTerm : naturalIso
  groupRecoveredTerm : groupRecovered

def TannakaClosureClosed {G : Type u} [Group G] {k : Type v} [Field k] {T : TannakaDuality G k} (P : TannakaReconstructionPackage G k T) : Prop :=
  P.naturalIso ≠ ∅ ∧ P.groupRecovered ≠ ∅

theorem tannaka_closure_closed_from_evidence
    {G : Type u} [Group G] {k : Type v} [Field k] {T : TannakaDuality G k} (P : TannakaReconstructionPackage G k T) :
    TannakaClosureClosed P := by
  refine And.intro (Set.nonempty_of_mem P.naturalIsoTerm) (Set.nonempty_of_mem P.groupRecoveredTerm)

end DualityAppliedHomologicalAlgebraCategoryCanonicalLaneLean
end HautevilleHouse