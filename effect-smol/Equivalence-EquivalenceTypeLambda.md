Package: `effect`<br />
Module: `Equivalence`<br />

## Equivalence.EquivalenceTypeLambda

Type lambda for `Equivalence`, used for higher-kinded type operations.

**When to use**

Use when you need to abstract over `Equivalence` in higher-kinded type code.

**Details**

- Enables `Equivalence` to work with the Effect type system's HKT infrastructure
- Used internally for type-level computations and generic abstractions

**Example** (Type-level usage)

```ts
import type { Equivalence, HKT } from "effect"

// Used internally for type-level computations
type NumberEquivalence = HKT.Kind<
  Equivalence.EquivalenceTypeLambda,
  never,
  never,
  never,
  number
>
// Equivalent to: Equivalence.Equivalence<number>
```

**See**

- `Equivalence`
- `TypeLambda`

**Signature**

```ts
export interface EquivalenceTypeLambda extends TypeLambda {
  readonly type: Equivalence<this["Target"]>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Equivalence.ts#L95)

Since v2.0.0