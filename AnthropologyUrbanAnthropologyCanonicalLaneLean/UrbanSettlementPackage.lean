import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace AnthropologyUrbanAnthropologyCanonicalLaneLean

structure SettlementPackage where
  settlementType : Prop
  populationDensity : Prop
  infrastructureLevel : Prop
  spatialOrganization : Prop

structure SettlementEvidence (S : SettlementPackage) where
  settlementTypeClosed : S.settlementType
  populationDensityClosed : S.populationDensity
  infrastructureLevelClosed : S.infrastructureLevel
  spatialOrganizationClosed : S.spatialOrganization

def SettlementClosed (S : SettlementPackage) : Prop :=
  S.settlementType ∧ S.populationDensity ∧ S.infrastructureLevel ∧ S.spatialOrganization

theorem settlement_closed_from_evidence (S : SettlementPackage) (E : SettlementEvidence S) : SettlementClosed S :=
  And.intro E.settlementTypeClosed (And.intro E.populationDensityClosed (And.intro E.infrastructureLevelClosed E.spatialOrganizationClosed))

end AnthropologyUrbanAnthropologyCanonicalLaneLean
end HautevilleHouse