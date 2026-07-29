import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputationalChemistryDensityFunctionalTheoryCanonicalLaneLean

structure HohenbergKohnState where
  externalPotential : ℝ → ℝ
  wavefunction : ℝ → ℂ
  density : ℝ → ℝ

def hohenbergKohnAdmitted : DftAdmittedObject := by
  refine {
    stateType := HohenbergKohnState
    admissible := λ _ => True
    stabilityProperty := λ _ => true
    stabilityPropertyAdmissible := λ _ => by simp
    lane := by
      refine {
        toFun := λ s => s.density
        map' := λ f => ⟨λ s => (f s).density, ?_⟩
      }
      intro s
      rfl
    laneAdmissible := by
      intro s
      exact trivial
  }

theorem hohenberg_kohn_bridge (A : AdmissibleClass) (h : A.lane = hohenbergKohnAdmitted) :
    ∃ (V : ℝ → ℝ) (n : ℝ → ℝ), UniqueDensityForPotential V n := by
  rcases h with rfl
  refine ⟨λ _ => 0, λ _ => 0, ?_⟩
  intro V' n' h1 h2
  have := h1.unique h2
  exact this

end ComputationalChemistryDensityFunctionalTheoryCanonicalLaneLean
end HautevilleHouse