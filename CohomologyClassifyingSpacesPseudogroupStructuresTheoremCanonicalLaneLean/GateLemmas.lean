import canonicalLaneMathlib.AdmissibleClass
import CohomologyClassifyingSpacesPseudogroupStructuresTheoremCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace CohomologyClassifyingSpacesPseudogroupStructuresTheoremCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end CohomologyClassifyingSpacesPseudogroupStructuresTheoremCanonicalLaneLean
end HautevilleHouse