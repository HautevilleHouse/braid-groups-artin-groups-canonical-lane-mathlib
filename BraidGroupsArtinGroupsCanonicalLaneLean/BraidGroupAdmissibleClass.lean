import BraidGroupsArtinGroupsCanonicalLaneLean.BraidGroupObjects

namespace HautevilleHouse
namespace BraidGroupsArtinGroupsCanonicalLaneLean

structure AdmissibleClass where
  object : BraidGroupAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.conclusion) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BraidGroupsArtinGroupsCanonicalLaneLean
end HautevilleHouse
