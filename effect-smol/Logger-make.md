Package: `effect`<br />
Module: `Logger`<br />

## Logger.make

Creates a new `Logger` from a log function.

**Details**

The log function receives an options object containing the message, log level,
cause, fiber information, and timestamp, and should return the desired output.

**Example** (Creating loggers from functions)

```ts
import { Effect, Logger, References } from "effect"

// Simple text logger
const textLogger = Logger.make((options) =>
  `${options.date.toISOString()} [${options.logLevel}] ${options.message}`
)

// Structured object logger
const objectLogger = Logger.make((options) => ({
  timestamp: options.date.toISOString(),
  level: options.logLevel,
  message: options.message,
  fiberId: options.fiber.id,
  annotations: options.fiber.getRef(References.CurrentLogAnnotations)
}))

// Custom filtering logger
const filteredLogger = Logger.make((options) => {
  if (options.logLevel === "Debug") {
    return // Skip debug messages
  }
  return `${options.logLevel}: ${options.message}`
})

const program = Effect.log("Hello World").pipe(
  Effect.provide(Logger.layer([textLogger]))
)
```

**Signature**

```ts
declare const make: <Message, Output>(log: (options: Options<Message>) => Output) => Logger<Message, Output>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Logger.ts#L550)

Since v2.0.0