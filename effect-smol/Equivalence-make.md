Package: `effect`<br />
Module: `Equivalence`<br />

## Equivalence.make

Creates a custom equivalence relation with an optimized reference equality check.

**When to use**

Use when you need an equality rule that the built-in instances and input
mapping helpers cannot express, and you can provide a law-abiding comparison.

**Details**

The returned equivalence first checks reference equality (`===`) for
performance. If the values are not the same reference, it falls back to the
provided equivalence function, which must satisfy reflexive, symmetric, and
transitive properties.

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

**Example** (Comparing numbers with tolerance)

```ts
import { Equivalence } from "effect"

const tolerance = Equivalence.make<number>((a, b) => Math.abs(a - b) < 0.0001)

console.log(tolerance(1.0, 1.001)) // false
console.log(tolerance(1.0, 1.00001)) // true
```

**See**

- `strictEqual`
- `mapInput`

**Signature**

```ts
declare const make: <A>(isEquivalent: (self: A, that: A) => boolean) => Equivalence<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Equivalence.ts#L147)

Since v2.0.0