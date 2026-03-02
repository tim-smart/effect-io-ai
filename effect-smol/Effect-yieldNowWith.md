Package: `effect`<br />
Module: `Effect`<br />

## Effect.yieldNowWith

Yields control back to the Effect runtime with a specified priority, allowing other fibers to execute.

**Example**

```ts
import { Effect } from "effect"

const program = Effect.gen(function*() {
  console.log("High priority task")
  yield* Effect.yieldNowWith(10) // Higher priority
  console.log("Continued after yield")
})

Effect.runPromise(program)
```

**Signature**

```ts
declare const yieldNowWith: (priority?: number) => Effect<void>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L1854)

Since v2.0.0