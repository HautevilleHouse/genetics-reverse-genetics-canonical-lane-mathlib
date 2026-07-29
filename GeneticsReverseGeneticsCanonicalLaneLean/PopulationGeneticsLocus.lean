import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsReverseGeneticsCanonicalLaneLean

structure Locus where
  chromosome : String
  position : Nat
  allele : String

def LocusKey (l : Locus) : String :=
  l.chromosome ++ ":" ++ toString l.position ++ ":" ++ l.allele

structure PopulationGeneticsLocus where
  locus : Locus
  alleleFrequency : Float
  dominant : Prop
  recessive : Prop
  mutationRate : Float

def PopulationGeneticsLocusProps (L : PopulationGeneticsLocus) : Prop :=
  L.alleleFrequency > 0.0 ∧ L.alleleFrequency < 1.0 ∧
  (L.dominant ∨ L.recessive) ∧
  L.mutationRate ≥ 0.0

end GeneticsReverseGeneticsCanonicalLaneLean
end HautevilleHouse