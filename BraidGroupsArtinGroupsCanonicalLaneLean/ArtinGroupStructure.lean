import canonicalLaneMathlib.AdmissibleClass
import BraidGroupsArtinGroupsCanonicalLaneLean.BraidGroupObjects

namespace HautevilleHouse
namespace BraidGroupsArtinGroupsCanonicalLaneLean

structure ArtinGroupStructurePackage where
  n : ℕ
  artinGroup : ArtinGroup n
  coxeterMatrix : Prop
  parabolicSubgroups : Prop
  solutionWordProblem : Prop

structure ArtinGroupStructureEvidence (A : ArtinGroupStructurePackage) where
  coxeterMatrixClosed : A.coxeterMatrix
  parabolicSubgroupsClosed : A.parabolicSubgroups
  solutionWordProblemClosed : A.solutionWordProblem

def ArtinGroupStructureClosed (A : ArtinGroupStructurePackage) : Prop :=
  A.coxeterMatrix ∧ A.parabolicSubgroups ∧ A.solutionWordProblem

theorem artin_group_structure_closed_from_evidence
    (A : ArtinGroupStructurePackage) (E : ArtinGroupStructureEvidence A) :
    ArtinGroupStructureClosed A := by
  exact And.intro E.coxeterMatrixClosed
    (And.intro E.parabolicSubgroupsClosed E.solutionWordProblemClosed)

end BraidGroupsArtinGroupsCanonicalLaneLean
end HautevilleHouse