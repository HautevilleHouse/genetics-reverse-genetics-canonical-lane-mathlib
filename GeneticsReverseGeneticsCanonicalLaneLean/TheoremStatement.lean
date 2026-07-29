import canonicalLaneMathlib.AdmissibleClass
import GeneticsReverseGeneticsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsReverseGeneticsCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  constrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := "GeneticsReverseGeneticsCanonicalLaneLean"
  theoremName := "HardyWeinbergEquilibrium"
  theoremObject := "HardyWeinbergEquilibrium"
  classicalBoundary := "classical source boundary carried"
  constrainedStatement := "Hardy-Weinberg equilibrium closed under bridge and gate"
  certificateLane := "manifold_constrained"
  carriedRemainder := "unrestricted classical closure remains carried"
}

theorem theorem_statement_source_key_checked :
    sourceTheoremStatement.sourceKey = "GeneticsReverseGeneticsCanonicalLaneLean" := by
  rfl

end GeneticsReverseGeneticsCanonicalLaneLean
end HautevilleHouse