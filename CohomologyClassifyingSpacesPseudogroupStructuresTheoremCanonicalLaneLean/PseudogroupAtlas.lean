import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CohomologyClassifyingSpacesPseudogroupStructuresTheoremCanonicalLaneLean

structure PseudogroupChart (M : Type u) [TopologicalSpace M] where
  domain : Set M
  codomain : Set M
  homeomorphism : domain ≃ₜ codomain

structure PseudogroupAtlas (M : Type u) [TopologicalSpace M] where
  charts : List (PseudogroupChart M)
  transitionConditions : Bool

structure PseudogroupStructure (M : Type u) [TopologicalSpace M] where
  atlas : PseudogroupAtlas M
  maximalCondition : Bool

end CohomologyClassifyingSpacesPseudogroupStructuresTheoremCanonicalLaneLean
end HautevilleHouse