Package: `effect`<br />
Module: `Utils`<br />

## Utils.Variance

Type-level marker encoding the variance of a `TypeLambda`'s type
parameters.

When to use:

- Define variance constraints for a higher-kinded type so that
  `Gen` can correctly infer `R`, `O`, and `E` from yielded values.
- You typically don't construct values of this type — it exists purely for
  type inference.

Behavior:

- `F` is invariant (must match exactly).
- `R` is contravariant (input / environment position).
- `O` and `E` are covariant (output / error position).
- Pure type-level construct — no runtime representation.

**Example** (Declaring variance for a TypeLambda)

```ts
import type { Utils } from "effect"
import type * as Option from "effect/Option"

declare const variance: Utils.Variance<
  Option.OptionTypeLambda,
  never,
  never,
  never
>
```

**See**

- `Gen` — uses `Variance` for type parameter inference

**Signature**

```ts
export interface Variance<in out F extends TypeLambda, in R, out O, out E> {
  readonly _F: Types.Invariant<F>
  readonly _R: Types.Contravariant<R>
  readonly _O: Types.Covariant<O>
  readonly _E: Types.Covariant<E>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Utils.ts#L172)

Since v2.0.0