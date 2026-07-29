import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsReverseGeneticsCanonicalLaneLean

structure PopulationData where
  numIndividuals : Nat
  alleleFrequencies : List ℚ

def PopulationClosed (P : PopulationData) : Prop :=
  P.numIndividuals > 0 ∧
  (∀ f ∈ P.alleleFrequencies, 0 ≤ f ∧ f ≤ 1) ∧
  (∑ f in P.alleleFrequencies, f = 1)

theorem allele_freq_sum_one (P : PopulationData) (h : PopulationClosed P) : ∑ f in P.alleleFrequencies, f = 1 := by
  exact h.2.2

end GeneticsReverseGeneticsCanonicalLaneLean
end HautevilleHouse