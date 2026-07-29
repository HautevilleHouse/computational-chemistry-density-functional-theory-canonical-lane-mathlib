import canonicalLaneMathlib.AdmissibleClass
import BridgeLemmas
import GateLemmas

namespace HautevilleHouse
namespace ComputationalChemistryDensityFunctionalTheoryCanonicalLaneLean

/-!
# Final theorem: DFT admissible closure
-/

def ConstrainedDFTClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_dft_closure (A : AdmissibleClass) : ConstrainedDFTClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ComputationalChemistryDensityFunctionalTheoryCanonicalLaneLean
end HautevilleHouse