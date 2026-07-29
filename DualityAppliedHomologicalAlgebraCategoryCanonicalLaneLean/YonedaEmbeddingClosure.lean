import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityAppliedHomologicalAlgebraCategoryCanonicalLaneLean

structure YonedaEmbedding (C : Type u) [CategoryStruct C] where
  homFunctor : C → (C → Type u)
  naturality : ∀ (X Y : C), (X → Y) → (homFunctor Y → homFunctor X)
  fullFidelity : Prop

def YonedaEmbeddingClosed {C : Type u} [CategoryStruct C] (Y : YonedaEmbedding C) : Prop :=
  Y.fullFidelity

theorem yoneda_embedding_closed {C : Type u} [CategoryStruct C] (Y : YonedaEmbedding C) (h : Y.fullFidelity) :
    YonedaEmbeddingClosed Y := h

end DualityAppliedHomologicalAlgebraCategoryCanonicalLaneLean
end HautevilleHouse