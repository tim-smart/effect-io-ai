Package: `effect`<br />
Module: `Logger`<br />

## Logger.Options

Information supplied to a `Logger` for a single log event.

**Details**

Includes the logged message, log level, cause, current fiber, and timestamp.

**Example** (Accessing logger options)

```ts
import { Effect, Logger } from "effect"

// Options interface provides all logging context
const detailedLogger = Logger.make((options) => {
  const output = {
    message: options.message,
    level: options.logLevel,
    timestamp: options.date.toISOString(),
    fiberId: options.fiber.id,
    hasCause: options.cause !== undefined
  }
  console.log(JSON.stringify(output))
})

const program = Effect.log("Processing request").pipe(
  Effect.provide(Logger.layer([detailedLogger]))
)
```

**Signature**

```ts
export interface Options<out Message> {
  readonly message: Message
  readonly logLevel: LogLevel.LogLevel
  readonly cause: Cause.Cause<unknown>
  readonly fiber: Fiber.Fiber<unknown, unknown>
  readonly date: Date
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Logger.ts#L177)

Since v2.0.0