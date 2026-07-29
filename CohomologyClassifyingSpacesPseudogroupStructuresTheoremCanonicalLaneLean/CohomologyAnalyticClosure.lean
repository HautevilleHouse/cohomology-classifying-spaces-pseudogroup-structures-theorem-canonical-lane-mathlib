import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CohomologyClassifyingSpacesPseudogroupStructuresTheoremCanonicalLaneLean.CohomologyCertificate

namespace HautevilleHouse
namespace CohomologyClassifyingSpacesPseudogroupStructuresTheoremCanonicalLaneLean

def ConstrainedCohomologyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A ∧ defaultCohomologyCertificate.obstructionVanishes

theorem constrained_cohomology_endgame (A : AdmissibleClass) : ConstrainedCohomologyClosure A := by
  refine And.intro (bridge_from_admissible_class A) (And.intro (gate_from_admissible_class A) ?_)
  exact obstruction_vanished_checked

end CohomologyClassifyingSpacesPseudogroupStructuresTheoremCanonicalLaneLean
end HautevilleHouse