import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GeneticsReverseGeneticsCanonicalLaneLean.HardyWeinbergEquilibrium
import HautevilleHouse.GeneticsReverseGeneticsCanonicalLaneLean.LinkageAnalysis
import HautevilleHouse.GeneticsReverseGeneticsCanonicalLaneLean.SequenceAlignment
import HautevilleHouse.GeneticsReverseGeneticsCanonicalLaneLean.Phylogenetics

namespace HautevilleHouse
namespace GeneticsReverseGeneticsCanonicalLaneLean

def ConstrainedReverseGeneticsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_reverse_genetics_endgame (A : AdmissibleClass) :
    ConstrainedReverseGeneticsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end HautevilleHouse.GeneticsReverseGeneticsCanonicalLaneLean
end HautevilleHouse
