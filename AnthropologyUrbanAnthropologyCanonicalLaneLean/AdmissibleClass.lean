import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyUrbanAnthropologyCanonicalLaneLean

structure AdmissibleClass where
  object : UrbanAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  UrbanWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end AnthropologyUrbanAnthropologyCanonicalLaneLean
end HautevilleHouse