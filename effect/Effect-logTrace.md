Package: `effect`<br />
Module: `Effect`<br />

## Effect.logTrace

Logs messages at the TRACE log level.

**Details**

This function logs the specified messages at the TRACE level. TRACE logs are
typically used for very detailed diagnostic information. These messages are
not displayed by default. To view them, you must adjust the logging
configuration by setting the minimum log level to `LogLevel.Trace` using
`Logger.withMinimumLogLevel`.

**Example**

```ts
import { Effect, Logger, LogLevel } from "effect"

const program = Effect.logTrace("message1").pipe(Logger.withMinimumLogLevel(LogLevel.Trace))

Effect.runFork(program)
// timestamp=... level=TRACE fiber=#0 message=message1
```

**Signature**

```ts
declare const logTrace: (...message: ReadonlyArray<any>) => Effect<void, never, never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L10870)

Since v2.0.0