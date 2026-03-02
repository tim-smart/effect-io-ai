Package: `effect`<br />
Module: `Logger`<br />

## Logger.withConsoleLog

Returns a new `Logger` that writes all output of the specified `Logger` to
the console using `console.log`.

This is useful for taking any logger that produces string or object output
and routing it to the console for development or debugging purposes.

**Example**

```ts
import { Effect, Logger } from "effect"

// Create a custom formatter
const customFormatter = Logger.make((options) =>
  `[${options.date.toISOString()}] ${options.logLevel}: ${options.message}`
)

// Route to console
const consoleLogger = Logger.withConsoleLog(customFormatter)

const program = Effect.log("Hello World").pipe(
  Effect.provide(Logger.layer([consoleLogger]))
)
```

**Signature**

```ts
declare const withConsoleLog: <Message, Output>(self: Logger<Message, Output>) => Logger<Message, void>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Logger.ts#L309)

Since v2.0.0