Package: `effect`<br />
Module: `Logger`<br />

## Logger.CurrentLoggers

Context reference containing the active loggers for the current fiber.

**Details**
By default this set includes the default logger and the tracer logger.
Providing `Logger.layer` replaces or merges with this set depending on its
options.

**Example** (Accessing current loggers)

```ts
import { Effect, Logger } from "effect"

// Access current loggers from fiber context
const program = Effect.gen(function*() {
  const currentLoggers = yield* Effect.service(Logger.CurrentLoggers)
  console.log(`Number of active loggers: ${currentLoggers.size}`)

  // Add a custom logger to the set
  const customLogger = Logger.make((options) => {
    console.log(`Custom: ${options.message}`)
  })

  yield* Effect.log("Hello from custom logger").pipe(
    Effect.provide(Logger.layer([customLogger]))
  )
})
```

**Signature**

```ts
declare const CurrentLoggers: Context.Reference<ReadonlySet<Logger<unknown, any>>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Logger.ts#L237)

Since v4.0.0