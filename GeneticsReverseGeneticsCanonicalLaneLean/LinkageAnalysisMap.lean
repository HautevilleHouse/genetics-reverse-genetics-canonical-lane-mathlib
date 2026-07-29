import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GeneticsReverseGeneticsCanonicalLaneLean.PopulationGeneticsLocus

namespace HautevilleHouse
namespace GeneticsReverseGeneticsCanonicalLaneLean

structure RecombinationFraction where
  lociPair : Locus × Locus
  theta : Float
  thetaInUnitInterval : theta ≥ 0.0 ∧ theta ≤ 0.5

def LogarithmOfOdds (theta : Float) (dataSize : Nat) : Float :=
  if theta > 0.0 then (dataSize.toFloat) * Math.log theta / Math.log 10.0
  else 0.0

structure LinkageMap where
  loci : List Locus
  recombinationFractions : List RecombinationFraction
  lods : Float
  significantEvidence : lods > 3.0

def LinkageMapClosed (L : LinkageMap) : Prop :=
  L.lods > 3.0 ∧ (∀ r ∈ L.recombinationFractions, r.thetaInUnitInterval.1 ∧ r.thetaInUnitInterval.2)

theorem linkage_map_closed_from_evidence (L : LinkageMap) (h : L.lods > 3.0) (h' : ∀ r ∈ L.recombinationFractions, r.thetaInUnitInterval.1 ∧ r.thetaInUnitInterval.2) : LinkageMapClosed L := by
  exact And.intro h h'

end GeneticsReverseGeneticsCanonicalLaneLean
end HautevilleHouse