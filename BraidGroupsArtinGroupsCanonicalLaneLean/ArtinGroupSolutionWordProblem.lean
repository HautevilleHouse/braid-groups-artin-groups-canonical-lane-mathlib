import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BraidGroupsArtinGroupsCanonicalLaneLean

structure WordProblemSolution where
  algorithmType : Type u
  correctness : Prop
  complexity : Prop
  correctnessClosed : correctness
  complexityClosed : complexity

structure WordProblemSolutionEvidence (W : WordProblemSolution) where
  correctnessClosed : W.correctnessClosed
  complexityClosed : W.complexityClosed

def WordProblemSolutionClosed (W : WordProblemSolution) : Prop :=
  W.correctness ∧ W.complexity

theorem word_problem_solution_closed_from_evidence (W : WordProblemSolution)
    (E : WordProblemSolutionEvidence W) : WordProblemSolutionClosed W := by
  exact And.intro E.correctnessClosed E.complexityClosed

end BraidGroupsArtinGroupsCanonicalLaneLean
end HautevilleHouse