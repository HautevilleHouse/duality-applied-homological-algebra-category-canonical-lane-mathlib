import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityAppliedHomologicalAlgebraCategoryCanonicalLaneLean

structure DerivedFunctorPackage where
  injectiveResolution : Prop
  rightDerivedDefined : Prop
  longExactSequence : Prop
  deltaFunctorial : Prop

structure DerivedFunctorEvidence (D : DerivedFunctorPackage) where
  injectiveResolutionClosed : D.injectiveResolution
  rightDerivedDefinedClosed : D.rightDerivedDefined
  longExactSequenceClosed : D.longExactSequence
  deltaFunctorialClosed : D.deltaFunctorial

def DerivedFunctorClosed (D : DerivedFunctorPackage) : Prop :=
  D.injectiveResolution ∧ D.rightDerivedDefined ∧
  D.longExactSequence ∧ D.deltaFunctorial

theorem derived_functor_closed_from_evidence (D : DerivedFunctorPackage)
    (Ev : DerivedFunctorEvidence D) : DerivedFunctorClosed D := by
  exact And.intro Ev.injectiveResolutionClosed
    (And.intro Ev.rightDerivedDefinedClosed
      (And.intro Ev.longExactSequenceClosed Ev.deltaFunctorialClosed))

end DualityAppliedHomologicalAlgebraCategoryCanonicalLaneLean
end HautevilleHouse