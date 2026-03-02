Package: `effect`<br />
Module: `HKT`<br />

## HKT.Kind

Applies type parameters to a TypeLambda to get the concrete type.

This type-level function takes a TypeLambda and four type parameters,
then "applies" them to get the actual type. It handles the variance
correctly, ensuring contravariant parameters are used as inputs and
covariant parameters as outputs.

This is the core mechanism that allows HKT to work - it transforms
abstract type constructors into concrete types by applying arguments.

**Example**

```ts
import type { Effect, HKT, Option } from "effect"

// Define TypeLambdas
interface OptionTypeLambda extends HKT.TypeLambda {
  readonly type: Option.Option<this["Target"]>
}

interface EffectTypeLambda extends HKT.TypeLambda {
  readonly type: Effect.Effect<this["Target"], this["Out2"], this["Out1"]>
}

// Apply type parameters to get concrete types
type OptionString = HKT.Kind<OptionTypeLambda, never, never, never, string>
// Result: Option.Option<string>

type EffectStringNumberBoolean = HKT.Kind<
  EffectTypeLambda,
  never,
  number,
  boolean,
  string
>
// Result: Effect.Effect<string, number, boolean>

// TypeLambdas enable generic programming over type constructors
type StringType<F extends HKT.TypeLambda> = HKT.Kind<
  F,
  never,
  never,
  never,
  string
>
```

**Signature**

```ts
type Kind<F, In, Out2, Out1, Target> = F extends {
  readonly type: unknown
} ? (F & {
    readonly In: In
    readonly Out2: Out2
    readonly Out1: Out1
    readonly Target: Target
  })["type"]
  : {
    readonly F: F
    readonly In: Types.Contravariant<In>
    readonly Out2: Types.Covariant<Out2>
    readonly Out1: Types.Covariant<Out1>
    readonly Target: Types.Invariant<Target>
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HKT.ts#L191)

Since v2.0.0