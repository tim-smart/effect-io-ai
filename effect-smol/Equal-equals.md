Package: `effect`<br />
Module: `Equal`<br />

## Equal.equals

Compares two values for deep structural equality.

When to use:
- As the default equality check throughout Effect code.
- In data-level assertions or conditional logic where structural comparison
  is needed.
- In its curried (single-argument) form to build reusable predicates.

Behavior:
- Returns a `boolean`; never throws.
- Primitives: compared by value. `NaN` equals `NaN`.
- Objects implementing `Equal`: delegates to their
  `[Equal.symbol]` method. If only one operand implements `Equal`, the
  result is `false`.
- Dates: compared by ISO string representation.
- RegExps: compared by string representation.
- Arrays: element-by-element recursive comparison (order matters).
- Maps / Sets: structural comparison of entries (order-independent, O(n²)).
- Plain objects: all own and inherited enumerable keys are compared
  recursively.
- Functions without an `Equal` implementation are compared by reference.
- Circular references are handled; two structures that are circular at the
  same depth are considered equal.
- Hash values are checked first as a fast-path rejection.
- Results are cached per object pair in a WeakMap. **Objects must not be
  mutated after their first comparison.**
- Supports dual (data-last) usage: call with one argument to get a curried
  predicate.

**Example** (comparing values)

```ts
import { Equal } from "effect"

// Primitives
console.log(Equal.equals(1, 1))         // true
console.log(Equal.equals(NaN, NaN))     // true
console.log(Equal.equals("a", "b"))     // false

// Objects and arrays
console.log(Equal.equals({ a: 1, b: 2 }, { a: 1, b: 2 })) // true
console.log(Equal.equals([1, [2, 3]], [1, [2, 3]]))         // true

// Dates
console.log(Equal.equals(new Date("2024-01-01"), new Date("2024-01-01"))) // true

// Maps (order-independent)
const m1 = new Map([["a", 1], ["b", 2]])
const m2 = new Map([["b", 2], ["a", 1]])
console.log(Equal.equals(m1, m2)) // true

// Curried form
const is5 = Equal.equals(5)
console.log(is5(5)) // true
console.log(is5(3)) // false
```

**See**

- `Equal` — the interface for custom equality
- `isEqual` — check whether a value implements `Equal`
- `asEquivalence` — wrap `equals` as an `Equivalence`

**Signature**

```ts
declare const equals: { <B>(that: B): <A>(self: A) => boolean; <A, B>(self: A, that: B): boolean; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Equal.ts#L238)

Since v2.0.0