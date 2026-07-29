import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GeneticsReverseGeneticsCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace GeneticsReverseGeneticsCanonicalLaneLean

def ConstrainedGeneticsReverseGeneticsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_genetics_reverse_genetics_endgame (A : AdmissibleClass) : ConstrainedGeneticsReverseGeneticsClosure A :=
  by exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GeneticsReverseGeneticsCanonicalLaneLean
end HautevilleHouse
