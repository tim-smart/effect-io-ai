Package: `effect`<br />
Module: `Effect`<br />

## Effect.withLogger

Adds a logger to the set of loggers which will output logs for this effect.

**Example**

```ts
import { Effect, Logger } from "effect"

// Create a custom logger that logs to the console
const customLogger = Logger.make(({ message }) =>
  Effect.sync(() => console.log(`[CUSTOM]: ${message}`))
)

const program = Effect.gen(function*() {
  yield* Effect.log("This will go to both default and custom logger")
  return "completed"
})

// Add the custom logger to the effect
const programWithLogger = Effect.withLogger(program, customLogger)

Effect.runPromise(programWithLogger)
// Output includes both default and custom log outputs
```

**Signature**

```ts
declare const withLogger: (<Output>(logger: Logger<unknown, Output>) => <A, E, R>(effect: Effect<A, E, R>) => Effect<A, E, R>) & (<A, E, R, Output>(effect: Effect<A, E, R>, logger: Logger<unknown, Output>) => Effect<A, E, R>)
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L13203)

Since v2.0.0