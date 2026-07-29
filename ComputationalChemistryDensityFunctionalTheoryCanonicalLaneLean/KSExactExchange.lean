import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputationalChemistryDensityFunctionalTheoryCanonicalLaneLean

structure KohnShamState where
  orbitals : ℕ → ℝ → ℂ
  exchangeEnergy : ℝ
  correlationEnergy : ℝ

def kohnShamAdmitted : DftAdmittedObject := by
  refine {
    object := KohnShamState
    admissible := λ x => by
      induction x with
      | mk orbitals exchangeEnergy correlationEnergy => exact True.intro
  }

theorem exact_exchange_closure (A : AdmissibleClass) (h : A.lane = kohnShamAdmitted) :
    bridgeClosed A ∧ gateClosed A := by
  constructor
  · exact bridge_from_admissible_class A
  · exact gate_from_admissible_class A

end ComputationalChemistryDensityFunctionalTheoryCanonicalLaneLean
end HautevilleHouse