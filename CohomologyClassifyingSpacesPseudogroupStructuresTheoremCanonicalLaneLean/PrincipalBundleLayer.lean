import canonicalLaneMathlib.AdmissibleClass
import Mathlib.AlgebraicTopology.ClassifyingSpace

noncomputable section

universe u

namespace HautevilleHouse
namespace CohomologyClassifyingSpacesPseudogroupStructuresTheoremCanonicalLaneLean

open AlgebraicTopology

structure PrincipalBundle (B : Type u) [TopologicalSpace B] (G : Type u) [TopologicalSpace G] [Group G] where
  totalSpace : Type u
  [totalSpaceTopology : TopologicalSpace totalSpace]
  projection : totalSpace → B
  fiberAction : G → totalSpace → totalSpace
  localTrivialization : Set (Set B)
  bundleProjectionContinuous : Continuous projection := by infer_instance

structure ClassifyingSpace (G : Type u) [TopologicalSpace G] [Group G] where
  space : Type u
  [spaceTopology : TopologicalSpace space]
  universalBundle : PrincipalBundle space G
  universalProperty : ∀ (B : Type u) [TopologicalSpace B] (ξ : PrincipalBundle B G),
    ∃! (f : B → space), Continuous f ∧ ξ = PullbackBundle f universalBundle

def PullbackBundle {B B' : Type u} [TopologicalSpace B] [TopologicalSpace B'] (f : B → B')
    (ξ : PrincipalBundle B' G) : PrincipalBundle B G := sorry

end CohomologyClassifyingSpacesPseudogroupStructuresTheoremCanonicalLaneLean
end HautevilleHouse