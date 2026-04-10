Package: `effect`<br />
Module: `Equal`<br />

## Equal.asEquivalence

Wraps `equals` as an `Equivalence<A>`.

When to use:
- When an API (e.g. `Array.dedupeWith`, `Equivalence.mapInput`) requires an
  `Equivalence` and you want to reuse `Equal.equals`.

Behavior:
- Returns a function `(a: A, b: A) => boolean` that delegates to
  `equals`.
- Pure; allocates a thin wrapper on each call.

**Example** (deduplicating with Equal semantics)

```ts
import { Array, Equal } from "effect"

const eq = Equal.asEquivalence<number>()
const result = Array.dedupeWith([1, 2, 2, 3, 1], eq)
console.log(result) // [1, 2, 3]
```

**See**

- `equals` — the underlying comparison function

**Signature**

```ts
declare const asEquivalence: <A>() => Equivalence<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Equal.ts#L524)

Since v2.0.0