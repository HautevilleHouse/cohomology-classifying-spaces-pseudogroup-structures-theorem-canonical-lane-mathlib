import canonicalLaneMathlib.AdmissibleClass
import Mathlib.AlgebraicTopology.DividedPower
import Mathlib.AlgebraicTopology.Sheaf

noncomputable section

universe u

namespace HautevilleHouse
namespace CohomologyClassifyingSpacesPseudogroupStructuresTheoremCanonicalLaneLean

open AlgebraicTopology Sheaf

structure SheafOnSite (C : Type u) [Category.{v} C] (J : GrothendieckTopology C) (A : Type w) [Category.{max u v} A] where
  value : Cᵒᵖ ⥤ A
  glueing : ∀ (U : C) (S : Sieve U) (hS : S ∈ J U), IsSheaf J value

structure CohomologyClass (X : Type u) [TopologicalSpace X] (n : ℕ) (G : Type u) [Group G] where
  sheaf : SheafOnSite (Opens X) (opensTopology X) (CategoryOfAbelianGroups.{u})
  degree : ℕ

end CohomologyClassifyingSpacesPseudogroupStructuresTheoremCanonicalLaneLean
end HautevilleHouse