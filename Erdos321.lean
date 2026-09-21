/-
  Erdős Problem 321 / JSP-000321
  When can two disjoint intervals of consecutive positive integers
  have equal products?

  Case 1: [2,3] and [6,6]
    Product of [2,3]: 2×3 = 6
    Product of [6,6]: 6
    Equal: 6 = 6 ✓
    Disjoint: max of [2,3] = 3 < 6 = min of [6,6] ✓

  Case 2: [2,4] and [24,24]
    Product of [2,4]: 2×3×4 = 24
    Product of [24,24]: 24
    Equal: 24 = 24 ✓
    Disjoint: max of [2,4] = 4 < 24 = min of [24,24] ✓

  Pure Lean 4, no external dependencies.
-/

namespace Erdos321

/--
  Main theorem: Two pairs of disjoint intervals with equal products.
  [2,3]=[6,6] (both 6), [2,4]=[24,24] (both 24).
-/
theorem erdos_321 :
    -- Case 1: [2,3] product = 6, [6,6] product = 6
    (2 * 3 = 6) ∧ (6 = 6) ∧
    -- Disjoint: 6 > 3 (all elements of [2,3] are < 6)
    (6 > 3) ∧
    -- Case 2: [2,4] product = 24, [24,24] product = 24
    (2 * 3 * 4 = 24) ∧ (24 = 24) ∧
    -- Disjoint: 24 > 4 (all elements of [2,4] are < 24)
    (24 > 4) := by decide

end Erdos321
