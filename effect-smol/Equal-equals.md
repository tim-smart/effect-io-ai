Package: `effect`<br />
Module: `Equal`<br />

## Equal.equals

Checks whether two values are deeply structurally equal.

**When to use**

Use when you need Effect's default structural equality check.

**Details**

Returns a `boolean` and never throws. Primitives are compared by value, and
`NaN` equals `NaN`. Objects implementing `Equal` delegate to their
`[Equal.symbol]` method; if only one operand implements `Equal`, the result
is `false`.

Dates compare by ISO string, RegExps compare by string representation,
arrays compare element-by-element, Maps and Sets compare entries
order-independently, and plain objects compare enumerable keys recursively.
Functions without an `Equal` implementation compare by reference. Circular
references are handled when both structures are circular at the same depth.

Hash values are checked first as a fast-path rejection. The function also
supports dual data-last usage: call it with one argument to get a curried
predicate.

**Gotchas**

- Results are cached per object pair in a WeakMap. **Objects must not be
  mutated after their first comparison.**
- Map and Set comparisons are O(n²) in size.

**Example** (Comparing Values)

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Equal.ts#L176)

Since v2.0.0