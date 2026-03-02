Package: `effect`<br />
Module: `Effect`<br />

## Effect.yieldNow

Yields control back to the Effect runtime, allowing other fibers to execute.

**Example**

```ts
import { Effect } from "effect"

const program = Effect.gen(function*() {
  console.log("Before yield")
  yield* Effect.yieldNow
  console.log("After yield")
})

Effect.runPromise(program)
```

**Signature**

```ts
declare const yieldNow: Effect<void, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L1833)

Since v2.0.0