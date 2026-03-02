Package: `effect`<br />
Module: `Equivalence`<br />

## Equivalence.make

Creates a custom equivalence relation with an optimized reference equality check.

When to use this:
- When you need a custom equivalence that isn't just strict equality
- When creating equivalences for complex types with custom comparison logic
- When you want the performance benefit of reference equality optimization

Behavior:
- Does not mutate inputs
- First checks reference equality (`===`) for performance; if values are identical, returns `true` without calling the function
- Falls back to the provided equivalence function if values are not the same reference
- The provided function must satisfy reflexive, symmetric, and transitive properties

**Example** (Case-insensitive string equivalence)

```ts
import { Equivalence } from "effect"

const caseInsensitive = Equivalence.make<string>((a, b) =>
  a.toLowerCase() === b.toLowerCase()
)

console.log(caseInsensitive("Hello", "HELLO")) // true
console.log(caseInsensitive("foo", "bar")) // false

// Same reference optimization
const str = "test"
console.log(caseInsensitive(str, str)) // true (fast path)
```

**Example** (Numeric tolerance equivalence)

```ts
import { Equivalence } from "effect"

const tolerance = Equivalence.make<number>((a, b) => Math.abs(a - b) < 0.0001)

console.log(tolerance(1.0, 1.0001)) // false
console.log(tolerance(1.0, 1.00001)) // true
```

See also: `strictEqual`, `mapInput`

**Signature**

```ts
declare const make: <A>(isEquivalent: (self: A, that: A) => boolean) => Equivalence<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Equivalence.ts#L190)

Since v2.0.0