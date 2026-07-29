import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Geometry.Manifold.Sheaf
import Mathlib.CategoryTheory.Sites.Presheaf

noncomputable section

universe u

namespace HautevilleHouse
namespace CohomologyClassifyingSpacesPseudogroupStructuresTheoremCanonicalLaneLean

open CategoryTheory Sites

structure Pseudogroup (X : Type u) [TopologicalSpace X] where
  localHomeos : Set (LocalHomeomorph X X)
  compositionClosure : ∀ f g ∈ localHomeos, (f ≫ g) ∈ localHomeos
  identityContained : LocalHomeomorph.id X ∈ localHomeos
  inversionClosure : ∀ f ∈ localHomeos, f.symm ∈ localHomeos

def PseudogroupSheaf (𝒢 : Pseudogroup X) : SheafOnSite (Opens X) (opensTopology X) (CategoryOfSets.{u}) := sorry

end CohomologyClassifyingSpacesPseudogroupStructuresTheoremCanonicalLaneLean
end HautevilleHouse