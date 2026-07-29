import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsReverseGeneticsCanonicalLaneLean

structure GeneExpressionData where
  expressionValues : List ℚ
  conditionLabel : String

def GeneExpressionClosed (G : GeneExpressionData) : Prop :=
  G.expressionValues.length > 0 ∧
  (∀ v ∈ G.expressionValues, v ≥ 0)

theorem expression_nonnegative (G : GeneExpressionData) (h : GeneExpressionClosed G) : ∀ v ∈ G.expressionValues, v ≥ 0 := by
  exact h.2

end GeneticsReverseGeneticsCanonicalLaneLean
end HautevilleHouse