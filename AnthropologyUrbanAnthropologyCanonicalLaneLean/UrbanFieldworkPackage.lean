import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace AnthropologyUrbanAnthropologyCanonicalLaneLean

structure FieldworkPackage where
  siteAccess : Prop
  participantObservation : Prop
  interviewsConducted : Prop
  dataAnalysisComplete : Prop

structure FieldworkEvidence (F : FieldworkPackage) where
  siteAccessClosed : F.siteAccess
  participantObservationClosed : F.participantObservation
  interviewsConductedClosed : F.interviewsConducted
  dataAnalysisCompleteClosed : F.dataAnalysisComplete

def FieldworkClosed (F : FieldworkPackage) : Prop :=
  F.siteAccess ∧ F.participantObservation ∧ F.interviewsConducted ∧ F.dataAnalysisComplete

theorem fieldwork_closed_from_evidence (F : FieldworkPackage) (E : FieldworkEvidence F) : FieldworkClosed F :=
  And.intro E.siteAccessClosed (And.intro E.participantObservationClosed (And.intro E.interviewsConductedClosed E.dataAnalysisCompleteClosed))

end AnthropologyUrbanAnthropologyCanonicalLaneLean
end HautevilleHouse