Package: `effect`<br />
Module: `Logger`<br />

## Logger.withMinimumLogLevel

Sets the minimum log level for subsequent logging operations, allowing
control over which log messages are displayed based on their severity.

**Example**

```ts
import { Effect, Logger, LogLevel } from "effect"

const program = Effect.logDebug("message1").pipe(Logger.withMinimumLogLevel(LogLevel.Debug))

// Effect.runFork(program)
// timestamp=... level=DEBUG fiber=#0 message=message1
```

**Signature**

```ts
declare const withMinimumLogLevel: { (level: LogLevel.LogLevel): <A, E, R>(self: Effect<A, E, R>) => Effect<A, E, R>; <A, E, R>(self: Effect<A, E, R>, level: LogLevel.LogLevel): Effect<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Logger.ts#L363)

Since v2.0.0