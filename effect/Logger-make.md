# make

Creates a custom logger that formats log messages according to the provided
function.

To import and use `make` from the "Logger" module:

```ts
import * as Logger from "effect/Logger"
// Can be accessed like this
Logger.make
```

**Example**

```ts
import { Effect, Logger, LogLevel } from "effect"

const logger = Logger.make(({ logLevel, message }) => {
  globalThis.console.log(`[${logLevel.label}] ${message}`)
})

const task1 = Effect.logDebug("task1 done")
const task2 = Effect.logDebug("task2 done")

const program = Effect.gen(function* () {
  yield* Effect.log("start")
  yield* task1
  yield* task2
  yield* Effect.log("done")
}).pipe(Logger.withMinimumLogLevel(LogLevel.Debug), Effect.provide(Logger.replace(Logger.defaultLogger, logger)))

// Effect.runFork(program)
// [INFO] start
// [DEBUG] task1 done
// [DEBUG] task2 done
// [INFO] done
```

**Signature**

```ts
export declare const make: <Message, Output>(
  log: (options: Logger.Options<Message>) => Output
) => Logger<Message, Output>
```
