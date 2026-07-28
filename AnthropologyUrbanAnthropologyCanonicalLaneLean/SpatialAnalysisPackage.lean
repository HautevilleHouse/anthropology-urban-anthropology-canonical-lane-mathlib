import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyUrbanAnthropologyCanonicalLaneLean

structure SpatialAnalysisPackage where
  neighborhoodMapping : Prop
  segregationIndex : Prop
  publicSpaceAccess : Prop
  builtEnvironmentSurvey : Prop

structure SpatialAnalysisEvidence (S : SpatialAnalysisPackage) where
  neighborhoodMappingClosed : S.neighborhoodMapping
  segregationIndexClosed : S.segregationIndex
  publicSpaceAccessClosed : S.publicSpaceAccess
  builtEnvironmentSurveyClosed : S.builtEnvironmentSurvey

def SpatialAnalysisClosed (S : SpatialAnalysisPackage) : Prop :=
  S.neighborhoodMapping ∧ S.segregationIndex ∧
  S.publicSpaceAccess ∧ S.builtEnvironmentSurvey

theorem spatial_analysis_closed_from_evidence (S : SpatialAnalysisPackage)
    (E : SpatialAnalysisEvidence S) : SpatialAnalysisClosed S := by
  exact And.intro E.neighborhoodMappingClosed
    (And.intro E.segregationIndexClosed
      (And.intro E.publicSpaceAccessClosed E.builtEnvironmentSurveyClosed))

end AnthropologyUrbanAnthropologyCanonicalLaneLean
end HautevilleHouse