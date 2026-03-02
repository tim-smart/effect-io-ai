Package: `effect`<br />
Module: `Tuple`<br />

## Tuple.makeEquivalence

Creates an `Equivalence` for tuples by comparing corresponding elements
using the provided per-position `Equivalence`s. Two tuples are equivalent
when all their corresponding elements are equivalent.

Alias of `Equivalence.Tuple`.

- Use when you need to compare tuples element-by-element.

**Example** (Comparing tuples for equivalence)

```ts
import { Equivalence, Tuple } from "effect"

const eq = Tuple.makeEquivalence([
  Equivalence.strictEqual<string>(),
  Equivalence.strictEqual<number>()
])

console.log(eq(["Alice", 30], ["Alice", 30])) // true
console.log(eq(["Alice", 30], ["Bob", 30]))   // false
```

**See**

- `makeOrder` – create an `Order` for tuples

**Signature**

```ts
declare const makeEquivalence: <const Elements extends ReadonlyArray<Equivalence.Equivalence<any>>>(elements: Elements) => Equivalence.Equivalence<{ readonly [I in keyof Elements]: [Elements[I]] extends [Equivalence.Equivalence<infer A>] ? A : never; }>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Tuple.ts#L563)

Since v2.0.0