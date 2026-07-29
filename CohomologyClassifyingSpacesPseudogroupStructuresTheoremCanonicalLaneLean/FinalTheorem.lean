import canonicalLaneMathlib.AdmissibleClass
import CohomologyClassifyingSpacesPseudogroupStructuresTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace CohomologyClassifyingSpacesPseudogroupStructuresTheoremCanonicalLaneLean

def ConstrainedCohomologyClassifyingClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_cohomology_classifying_endgame (A : AdmissibleClass) :
    ConstrainedCohomologyClassifyingClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CohomologyClassifyingSpacesPseudogroupStructuresTheoremCanonicalLaneLean
end HautevilleHouse