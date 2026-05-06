Package: `effect`<br />
Module: `Effect`<br />

## Effect.runSyncExitWith

Runs an effect synchronously with provided services, returning an Exit result.

**Example**

```ts
import { Effect, Exit, Context } from "effect"

// Define a logger service
const Logger = Context.Service<{
  log: (msg: string) => void
}>("Logger")

const program = Effect.gen(function*() {
  const logger = yield* Effect.service(Logger)
  logger.log("Computing result...")
  return 42
})

// Prepare context
const context = Context.make(Logger, {
  log: (msg) => console.log(`[LOG] ${msg}`)
})

const exit = Effect.runSyncExitWith(context)(program)

if (Exit.isSuccess(exit)) {
  console.log(`Success: ${exit.value}`)
} else {
  console.log(`Failure: ${exit.cause}`)
}
// Output:
// [LOG] Computing result...
// Success: 42
```

**Signature**

```ts
declare const runSyncExitWith: <R>(context: Context.Context<R>) => <A, E>(effect: Effect<A, E, R>) => Exit.Exit<A, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L8853)

Since v4.0.0