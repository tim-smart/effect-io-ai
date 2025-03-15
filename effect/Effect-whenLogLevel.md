Package: `effect`<br />
Module: `Effect`<br />

## Effect.whenLogLevel

Conditionally executes an effect based on the specified log level and currently enabled log level.

**Details**

This function runs the provided effect only if the specified log level is
enabled. If the log level is enabled, the effect is executed and its result
is wrapped in `Some`. If the log level is not enabled, the effect is not
executed and `None` is returned.

This function is useful for conditionally executing logging-related effects
or other operations that depend on the current log level configuration.

**Example**

```ts
import { Effect, Logger, LogLevel } from "effect"

const program = Effect.gen(function* () {
  yield* Effect.whenLogLevel(Effect.logTrace("message1"), LogLevel.Trace); // returns `None`
  yield* Effect.whenLogLevel(Effect.logDebug("message2"), LogLevel.Debug); // returns `Some`
}).pipe(Logger.withMinimumLogLevel(LogLevel.Debug));

Effect.runFork(program)
// timestamp=... level=DEBUG fiber=#0 message=message2
```

**See**

- `FiberRef.minimumLogLevel` to retrieve the current minimum log level.

**Signature**

```ts
declare const whenLogLevel: { (level: LogLevel.LogLevel | LogLevel.Literal): <A, E, R>(self: Effect<A, E, R>) => Effect<Option.Option<A>, E, R>; <A, E, R>(self: Effect<A, E, R>, level: LogLevel.LogLevel | LogLevel.Literal): Effect<Option.Option<A>, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L11188)

Since v3.13.0