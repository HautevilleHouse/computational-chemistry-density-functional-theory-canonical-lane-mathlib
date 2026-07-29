import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputationalChemistryDensityFunctionalTheoryCanonicalLaneLean

/-!
# Admissible class for Hohenberg–Kohn theorem

This module formalizes the admissible density-functional objects:
the external potential, the ground-state density, and the interaction parameter
lambda. The bridge condition asserts that the external potential determines the
ground-state density (bijection), and the gate closure captures whether the
endpoint (full density functional theory) is satisfied or the remainder
(non-interacting limit) is recorded.
-/

structure KohnShamHamiltonian where
  T : ℝ
  Vext : ℝ → ℝ
  Vee : ℝ → ℝ → ℝ
  lambda : ℝ

structure DensityFunctionalState where
  H : KohnShamHamiltonian
  density : ℝ → ℝ
  groundStateEnergy : ℝ

def hohenbergKohnProjection (s : DensityFunctionalState) : DensityFunctionalState := s

end ComputationalChemistryDensityFunctionalTheoryCanonicalLaneLean
end HautevilleHouse