import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsReverseGeneticsCanonicalLaneLean

structure HardyWeinbergAdmittedObject where
  population : Type
  alleleFrequencies : population -> Prop
  hardyWeinbergEquilibrium : Prop
  conclusion : hardyWeinbergEquilibrium

structure RecombinationAdmittedObject where
  locusA : Type
  locusB : Type
  recombinationFraction : Prop
  linkageEquilibrium : Prop
  conclusion : linkageEquilibrium

structure AdmissibleClass where
  object : HardyWeinbergAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  HardyWeinbergClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def HardyWeinbergClosed (O : HardyWeinbergAdmittedObject) : Prop :=
  O.hardyWeinbergEquilibrium

end GeneticsReverseGeneticsCanonicalLaneLean
end HautevilleHouse