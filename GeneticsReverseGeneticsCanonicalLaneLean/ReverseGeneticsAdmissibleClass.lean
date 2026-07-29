import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GeneticsReverseGeneticsCanonicalLaneLean.PopulationGeneticsLocus
import HautevilleHouse.GeneticsReverseGeneticsCanonicalLaneLean.HardyWeinbergEquilibrium
import HautevilleHouse.GeneticsReverseGeneticsCanonicalLaneLean.LinkageAnalysisMap
import HautevilleHouse.GeneticsReverseGeneticsCanonicalLaneLean.SequenceAlignment
import HautevilleHouse.GeneticsReverseGeneticsCanonicalLaneLean.PhylogeneticTree

namespace HautevilleHouse
namespace GeneticsReverseGeneticsCanonicalLaneLean

structure GeneticsAdmittedObject where
  locus : PopulationGeneticsLocus
  hardyWeinberg : HardyWeinbergEquilibriumPack locus
  linkageMap : LinkageMap
  alignment : SequenceAlignment
  phylogeneticTree : PhylogeneticTree
  conclusion : Prop

structure AdmissibleClass where
  object : GeneticsAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.conclusion

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end GeneticsReverseGeneticsCanonicalLaneLean
end HautevilleHouse