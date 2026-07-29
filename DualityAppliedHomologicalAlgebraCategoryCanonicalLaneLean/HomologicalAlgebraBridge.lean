import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityAppliedHomologicalAlgebraCategoryCanonicalLaneLean

structure ChainComplex (C : Type u) [AddCommGroup C] where
  objects : ℕ → C
  differentials : (n : ℕ) → objects n → objects (n+1)
  chainComplexCondition : Prop

def ChainComplexClosed {C : Type u} [AddCommGroup C] (K : ChainComplex C) : Prop :=
  K.chainComplexCondition

theorem chain_complex_closed {C : Type u} [AddCommGroup C] (K : ChainComplex C) (h : K.chainComplexCondition) :
    ChainComplexClosed K := h

structure HomologicalDuality (C : Type u) [AddCommGroup C] (K : ChainComplex C) where
  dualComplex : ChainComplex C
  quasiIsomorphism : Prop
  dualityClosed : Prop

end DualityAppliedHomologicalAlgebraCategoryCanonicalLaneLean
end HautevilleHouse