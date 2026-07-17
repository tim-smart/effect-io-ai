Package: `effect`<br />
Module: `Logger`<br />

## Logger.Logger

A logger that transforms a runtime log event into an output value.

**Details**

The runtime calls `log` with the message, level, cause, fiber, and timestamp
for each log event. Use `Logger.layer` to install one or more loggers for an
effect.

**Example** (Creating custom loggers)

```ts
import { Effect, Logger } from "effect"

// Create a custom logger that accepts unknown messages and returns void
const stringLogger = Logger.make<unknown, void>((options) => {
  console.log(`[${options.logLevel}] ${options.message}`)
})

// Create a logger that accepts any message type and returns a formatted string
const formattedLogger = Logger.make<unknown, string>((options) =>
  `${options.date.toISOString()} [${options.logLevel}] ${options.message}`
)

// Use the logger in an Effect program
const program = Effect.log("Hello World").pipe(
  Effect.provide(Logger.layer([stringLogger]))
)
```

**Signature**

```ts
export interface Logger<in Message, out Output> extends Pipeable {
  readonly [TypeId]: typeof TypeId
  log(options: Options<Message>): Output
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Logger.ts#L66)

Since v2.0.0