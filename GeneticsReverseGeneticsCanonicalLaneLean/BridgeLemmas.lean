import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsReverseGeneticsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  (A.endpointSatisfied ∨ A.remainderRecorded) ∧ True

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  by exact And.intro A.gateWitness trivial

end GeneticsReverseGeneticsCanonicalLaneLean
end HautevilleHouse
