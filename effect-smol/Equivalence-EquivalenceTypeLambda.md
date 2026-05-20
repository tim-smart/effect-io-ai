Package: `effect`<br />
Module: `Equivalence`<br />

## Equivalence.EquivalenceTypeLambda

Type lambda for `Equivalence`, used for higher-kinded type operations.

**When to use**

- Rarely needed in application code
- Use primarily for internal type system operations and HKT (Higher-Kinded Types) abstractions
- Use when working with generic type constructors that require type lambdas

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Equivalence.ts#L142)

Since v2.0.0