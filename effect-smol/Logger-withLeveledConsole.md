Package: `effect`<br />
Module: `Logger`<br />

## Logger.withLeveledConsole

Returns a new `Logger` that writes all output of the specified `Logger` to
the console.

Will use the appropriate console method (i.e. `console.log`, `console.error`,
etc.) based upon the current `LogLevel`.

- `Debug` -> `console.debug`
- `Info` -> `console.info`
- `Trace` -> `console.trace`
- `Warn` -> `console.warn`
- `Error` and `Fatal` -> `console.error`
- Others -> `console.log`

**Example**

```ts
import { Effect, Logger } from "effect"

const formatter = Logger.make((options) =>
  `[${options.logLevel}] ${options.message}`
)

const leveledLogger = Logger.withLeveledConsole(formatter)

const program = Effect.gen(function*() {
  yield* Effect.logInfo("Info message") // -> console.info
  yield* Effect.logWarning("Warning") // -> console.warn
  yield* Effect.logError("Error occurred") // -> console.error
  yield* Effect.logDebug("Debug info") // -> console.debug
}).pipe(
  Effect.provide(Logger.layer([leveledLogger]))
)
```

**Signature**

```ts
declare const withLeveledConsole: <Message, Output>(self: Logger<Message, Output>) => Logger<Message, void>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Logger.ts#L387)

Since v2.0.0