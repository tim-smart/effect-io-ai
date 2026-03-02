Package: `effect`<br />
Module: `Logger`<br />

## Logger.make

Creates a new `Logger` from a log function.

The log function receives an options object containing the message, log level,
cause, fiber information, and timestamp, and should return the desired output.

**Example**

```ts
import { Effect, Logger } from "effect"
import { CurrentLogAnnotations } from "effect/References"

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
  annotations: options.fiber.getRef(CurrentLogAnnotations)
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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Logger.ts#L509)

Since v2.0.0