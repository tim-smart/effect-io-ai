# withLeveledConsole

Takes a `Logger<M, O>` and returns a logger that calls the respective `Console` method
based on the log level.

To import and use `withLeveledConsole` from the "Logger" module:

ts
import \* as Logger from "effect/Logger"
// Can be accessed like this
Logger.withLeveledConsole
undefined

**Example**

```ts
import { Logger, Effect } from "effect"

const loggerLayer = Logger.replace(Logger.defaultLogger, Logger.withLeveledConsole(Logger.stringLogger))

Effect.gen(function* () {
  yield* Effect.logError("an error")
  yield* Effect.logInfo("an info")
}).pipe(Effect.provide(loggerLayer))
```

**Signature**

```ts
export declare const withLeveledConsole: <M, O>(self: Logger<M, O>) => Logger<M, void>
```
