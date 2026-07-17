Package: `effect`<br />
Module: `Logger`<br />

## Logger.withConsoleError

Returns a new `Logger` that writes all output of the specified `Logger` to
the console using `console.error`.

**When to use**

Use when logger output should be routed to `console.error`, such as error logs that
should appear on stderr instead of stdout.

**Example** (Writing logger output with console.error)

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

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Logger.ts#L306)

Since v2.0.0