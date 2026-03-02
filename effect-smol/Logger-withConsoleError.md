Package: `effect`<br />
Module: `Logger`<br />

## Logger.withConsoleError

Returns a new `Logger` that writes all output of the specified `Logger` to
the console using `console.error`.

This is particularly useful for error logging where you want to ensure
log messages appear in the error stream (stderr) rather than standard output.

**Example**

```ts
import { Effect, Logger } from "effect"

// Create an error-specific formatter
const errorFormatter = Logger.make((options) =>
  `ERROR [${options.date.toISOString()}]: ${options.message}`
)

// Route to console.error
const errorLogger = Logger.withConsoleError(errorFormatter)

const program = Effect.logError("Database connection failed").pipe(
  Effect.provide(Logger.layer([errorLogger]))
)
```

**Signature**

```ts
declare const withConsoleError: <Message, Output>(self: Logger<Message, Output>) => Logger<Message, void>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Logger.ts#L343)

Since v2.0.0