Package: `effect`<br />
Module: `Utils`<br />

## Utils.Variance

Type-level marker encoding the variance of a `TypeLambda`'s type
parameters.

**When to use**

Use to define variance constraints for a higher-kinded type so that
`Gen` can correctly infer `R`, `O`, and `E` from yielded values.

**Details**

`F` is invariant and must match exactly. `R` is contravariant in the input
or environment position. `O` and `E` are covariant in the output and error
positions. This is a pure type-level construct with no runtime
representation.

**Example** (Declaring variance for a TypeLambda)

```ts
import type { Option, Utils } from "effect"

declare const variance: Utils.Variance<
  Option.OptionTypeLambda,
  never,
  never,
  never
>
```

**See**

- `Gen` for the type-level signature that uses `Variance`

**Signature**

```ts
export interface Variance<in out F extends TypeLambda, in R, out O, out E> {
  readonly _F: Types.Invariant<F>
  readonly _R: Types.Contravariant<R>
  readonly _O: Types.Covariant<O>
  readonly _E: Types.Covariant<E>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Utils.ts#L179)

Since v2.0.0