import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyUrbanAnthropologyCanonicalLaneLean

structure UrbanProcessesPackage where
  urbanizationRate : Prop
  gentrificationIndex : Prop
  migrationFlows : Prop
  informalSettlements : Prop

structure UrbanProcessesEvidence (P : UrbanProcessesPackage) where
  urbanizationRateClosed : P.urbanizationRate
  gentrificationIndexClosed : P.gentrificationIndex
  migrationFlowsClosed : P.migrationFlows
  informalSettlementsClosed : P.informalSettlements

def UrbanProcessesClosed (P : UrbanProcessesPackage) : Prop :=
  P.urbanizationRate ∧ P.gentrificationIndex ∧
  P.migrationFlows ∧ P.informalSettlements

theorem urban_processes_closed_from_evidence (P : UrbanProcessesPackage)
    (E : UrbanProcessesEvidence P) : UrbanProcessesClosed P := by
  exact And.intro E.urbanizationRateClosed
    (And.intro E.gentrificationIndexClosed
      (And.intro E.migrationFlowsClosed E.informalSettlementsClosed))

end AnthropologyUrbanAnthropologyCanonicalLaneLean
end HautevilleHouse