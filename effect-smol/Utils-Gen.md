Package: `effect`<br />
Module: `Utils`<br />

## Utils.Gen

Type-level signature for generator-based monadic composition over any
`TypeLambda`.

When to use:

- Type the `gen` function of a module that supports generator syntax
  (e.g. `Option.gen`, `Result.gen`, `Effect.gen`).
- Accepts either `(body)` or `(self, body)` where `body` is a generator
  function. The `self` overload binds `this` inside the generator.

Behavior:

- Pure type alias — no runtime behavior.
- Infers `R`, `O`, `E` from the yielded values via `Variance` or
  `Kind` constraints.
- The generator's return type `A` becomes the output's `A` parameter.

**Example** (Typing a gen function for Option)

```ts
import type { Option, Utils } from "effect"

declare const gen: Utils.Gen<Option.OptionTypeLambda>
```

**See**

- `Variance` — encodes the variance used for inference
- `SingleShotGen` — the iterator protocol that makes yielding work

**Signature**

```ts
type Gen<F> = <
  Self,
  K extends Variance<F, any, any, any> | Kind<F, any, any, any, any>,
  A
>(
  ...args:
    | [
      self: Self,
      body: (this: Self) => Generator<K, A, never>
    ]
    | [
      body: () => Generator<K, A, never>
    ]
) => Kind<
  F,
  [K] extends [Variance<F, infer R, any, any>] ? R
    : [K] extends [Kind<F, infer R, any, any, any>] ? R
    : never,
  [K] extends [Variance<F, any, infer O, any>] ? O
    : [K] extends [Kind<F, any, infer O, any, any>] ? O
    : never,
  [K] extends [Variance<F, any, any, infer E>] ? E
    : [K] extends [Kind<F, any, any, infer E, any>] ? E
    : never,
  A
>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Utils.ts#L211)

Since v2.0.0