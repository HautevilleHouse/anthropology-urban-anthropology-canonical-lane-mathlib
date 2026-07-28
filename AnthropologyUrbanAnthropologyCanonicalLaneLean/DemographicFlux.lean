import AnthropologyUrbanAnthropologyCanonicalLaneLean.UrbanSpace

namespace HautevilleHouse
namespace AnthropologyUrbanAnthropologyCanonicalLaneLean

structure DemographicFluxPackage (U : UrbanSpacePackage) where
  populationDynamics : Prop
  migrationFlows : Prop
  demographicTransitions : Prop
  integrationCoefficients : Prop

structure DemographicFluxEvidence {U : UrbanSpacePackage} (D : DemographicFluxPackage U) where
  populationDynamicsClosed : D.populationDynamics
  migrationFlowsClosed : D.migrationFlows
  demographicTransitionsClosed : D.demographicTransitions
  integrationCoefficientsClosed : D.integrationCoefficients

def DemographicFluxClosed {U : UrbanSpacePackage} (D : DemographicFluxPackage U) : Prop :=
  D.populationDynamics ∧ D.migrationFlows ∧ D.demographicTransitions ∧ D.integrationCoefficients

theorem demographic_flux_closed_from_evidence {U : UrbanSpacePackage} (D : DemographicFluxPackage U) (E : DemographicFluxEvidence D) :
    DemographicFluxClosed D := by
  exact And.intro E.populationDynamicsClosed (And.intro E.migrationFlowsClosed (And.intro E.demographicTransitionsClosed E.integrationCoefficientsClosed))

end AnthropologyUrbanAnthropologyCanonicalLaneLean
end HautevilleHouse