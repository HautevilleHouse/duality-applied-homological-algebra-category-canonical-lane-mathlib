import DualityAppliedHomologicalAlgebraCategoryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DualityAppliedHomologicalAlgebraCategoryCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
deriving Repr, DecidableEq

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := "duality-applied-homological-algebra-category-canonical-lane",
  theoremName := "DualityAppliedHomologicalAlgebraCategory",
  theoremObject := "AdmittedObject with Yoneda embedding, adjoint functors, limits and colimits",
  classicalBoundary := "unrestricted classical closure remains carried",
  manifoldConstrainedStatement := "admissible-class closure internalized through bridge and gate",
  certificateLane := "bridge_evaluation",
  carriedRemainder := "first principles: Yoneda lemma, adjunction, limit-colimit duality"
}

def admittedClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

end DualityAppliedHomologicalAlgebraCategoryCanonicalLaneLean
end HautevilleHouse