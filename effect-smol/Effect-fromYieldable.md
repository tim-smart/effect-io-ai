Package: `effect`<br />
Module: `Effect`<br />

## Effect.fromYieldable

Converts a yieldable value to an Effect.

**Example**

```ts
import { Effect } from "effect"
import * as Option from "effect/Option"

// Option is yieldable in Effect
const program = Effect.gen(function*() {
  const value = yield* Effect.fromYieldable(Option.some(42))
  return value * 2
})

Effect.runPromise(program).then(console.log)
// Output: 84
```

**Signature**

```ts
declare const fromYieldable: <Self extends Yieldable.Any, A, E, R>(yieldable: Yieldable<Self, A, E, R>) => Effect<A, E, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L1986)

Since v4.0.0