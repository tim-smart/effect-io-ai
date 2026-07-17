Package: `effect`<br />
Module: `HKT`<br />

## HKT.TypeLambda

Base interface for defining Higher-Kinded Type parameters.

**When to use**

Use to encode a type constructor for higher-kinded generic programming.

**Details**

A `TypeLambda` encodes the "shape" of a type constructor, specifying how many
type parameters it takes and their variance (contravariant, covariant, or
invariant). The four parameters are `In` for contravariant input, `Out2` for
covariant output often used for errors, `Out1` for covariant output often used
for context or environment, and `Target` for the invariant main type.

**Example** (Defining type lambdas)

```ts
import type { Effect, HKT } from "effect"

// TypeLambda for Array<A>
interface ArrayTypeLambda extends HKT.TypeLambda {
  readonly type: Array<this["Target"]>
}

// TypeLambda for Effect<A, E, R>
interface EffectTypeLambda extends HKT.TypeLambda {
  readonly type: Effect.Effect<this["Target"], this["Out2"], this["Out1"]>
}

// TypeLambda for function (A) => B
interface FunctionTypeLambda extends HKT.TypeLambda {
  readonly type: (a: this["In"]) => this["Target"]
}
```

**Signature**

```ts
export interface TypeLambda {
  readonly In: unknown
  readonly Out2: unknown
  readonly Out1: unknown
  readonly Target: unknown
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HKT.ts#L137)

Since v2.0.0