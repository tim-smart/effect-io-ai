Package: `effect`<br />
Module: `Cause`<br />

## Cause.YieldableError

Base interface for error classes that can be yielded directly inside
`Effect.gen` (via `Symbol.iterator`) or converted to a failing Effect
via ``.

All built-in error classes in this module (`NoSuchElementError`,
`TimeoutError`, `IllegalArgumentError`,
`ExceededCapacityError`, `UnknownError`) extend this
interface.

**Example** (yielding an error in Effect.gen)

```ts
import { Cause, Effect } from "effect"

const error = new Cause.NoSuchElementError("not found")

const program = Effect.gen(function*() {
  return yield* error // fails the effect with NoSuchElementError
})
```

**Signature**

```ts
export interface YieldableError extends Error, Pipeable, Inspectable {
  readonly [Effect.TypeId]: Effect.Variance<never, this, never>
  [Symbol.iterator](): Effect.EffectIterator<Effect.Effect<never, this, never>>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cause.ts#L1092)

Since v2.0.0