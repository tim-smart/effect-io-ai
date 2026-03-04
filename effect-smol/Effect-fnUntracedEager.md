Package: `effect`<br />
Module: `Effect`<br />

## Effect.fnUntracedEager

Creates untraced function effects with eager evaluation optimization.

Executes generator functions eagerly when all yielded effects are synchronous,
stopping at the first async effect and deferring to normal execution.

**Example**

```ts
import { Effect } from "effect"

const computation = Effect.fnUntracedEager(function*() {
  yield* Effect.succeed(1)
  yield* Effect.succeed(2)
  return "computed eagerly"
})

const effect = computation() // Executed immediately if all effects are sync
```

**Signature**

```ts
declare const fnUntracedEager: fn.Untraced
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L14637)

Since v4.0.0