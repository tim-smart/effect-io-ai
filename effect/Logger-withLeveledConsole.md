Package: `effect`<br />
Module: `Logger`<br />

## Logger.withLeveledConsole

Takes a `Logger<M, O>` and returns a logger that calls the respective `Console` method
based on the log level.

**Example**

```ts
import { Logger, Effect } from "effect"

const loggerLayer = Logger.replace(
  Logger.defaultLogger,
  Logger.withLeveledConsole(Logger.stringLogger),
)

Effect.gen(function* () {
  yield* Effect.logError("an error")
  yield* Effect.logInfo("an info")
}).pipe(Effect.provide(loggerLayer))
```

**Signature**

```ts
declare const withLeveledConsole: <M, O>(self: Logger<M, O>) => Logger<M, void>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Logger.ts#L265)

Since v3.8.0