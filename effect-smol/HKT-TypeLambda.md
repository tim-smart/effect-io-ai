Package: `effect`<br />
Module: `HKT`<br />

## HKT.TypeLambda

Base interface for defining Higher-Kinded Type parameters.

A TypeLambda encodes the "shape" of a type constructor, specifying how many
type parameters it takes and their variance (contravariant, covariant, or invariant).
This allows representing complex types like `Effect<A, E, R>` in a uniform way.

The four parameters represent:
- `In`: Contravariant input parameter
- `Out2`: Covariant output parameter (often used for errors)
- `Out1`: Covariant output parameter (often used for context/environment)
- `Target`: Invariant target parameter (the main type)

**Example**

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HKT.ts#L134)

Since v2.0.0