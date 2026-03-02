Package: `effect`<br />
Module: `Logger`<br />

## Logger.defaultLogger

The default logging implementation used by the Effect runtime.

**Example**

```ts
import { Effect, Logger } from "effect"

// Use the default logger (automatically used by Effect runtime)
const program = Effect.gen(function*() {
  yield* Effect.log("This uses the default logger")
  yield* Effect.logInfo("Info message")
  yield* Effect.logError("Error message")
})

// Explicitly use the default logger
const withDefaultLogger = Effect.log("Explicit default").pipe(
  Effect.provide(Logger.layer([Logger.defaultLogger]))
)

// Compare with custom logger
const customLogger = Logger.make((options) => {
  console.log(`CUSTOM: ${options.message}`)
})
```

**Signature**

```ts
declare const defaultLogger: Logger<unknown, void>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Logger.ts#L541)

Since v4.0.0