Package: `effect`<br />
Module: `Effect`<br />

## Effect.sleep

Returns an effect that suspends for the specified duration. This method is
asynchronous, and does not actually block the fiber executing the effect.

**Example**

```ts
import { Console, Effect } from "effect"

const program = Effect.gen(function*() {
  yield* Console.log("Start")
  yield* Effect.sleep("2 seconds")
  yield* Console.log("End")
})

Effect.runFork(program)
// Output: "Start" (immediately)
// Output: "End" (after 2 seconds)
```

**Signature**

```ts
declare const sleep: (duration: Duration.Input) => Effect<void>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L4531)

Since v2.0.0