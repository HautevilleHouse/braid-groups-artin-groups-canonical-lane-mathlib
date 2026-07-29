import BraidGroupsArtinGroupsCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace BraidGroupsArtinGroupsCanonicalLaneLean

structure AdmissibleClass where
  object : BraidAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BraidWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BraidGroupsArtinGroupsCanonicalLaneLean
end HautevilleHouse