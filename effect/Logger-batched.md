# batched

Creates a batched logger that groups log messages together and processes them
in intervals.

To import and use `batched` from the "Logger" module:

ts
import \* as Logger from "effect/Logger"
// Can be accessed like this
Logger.batched
undefined

**Example**

```ts
import { Console, Effect, Logger } from "effect"

const LoggerLive = Logger.replaceScoped(
  Logger.defaultLogger,
  Logger.logfmtLogger.pipe(
    Logger.batched("500 millis", (messages) => Console.log("BATCH", `[\n${messages.join("\n")}\n]`))
  )
)

const program = Effect.gen(function* () {
  yield* Effect.log("one")
  yield* Effect.log("two")
  yield* Effect.log("three")
}).pipe(Effect.provide(LoggerLive))

// Effect.runFork(program)
// BATCH [
// timestamp=... level=INFO fiber=#0 message=one
// timestamp=... level=INFO fiber=#0 message=two
// timestamp=... level=INFO fiber=#0 message=three
// ]
```

**Signature**

```ts
export declare const batched: {
  <Output, R>(
    window: DurationInput,
    f: (messages: Array<Types.NoInfer<Output>>) => Effect<void, never, R>
  ): <Message>(self: Logger<Message, Output>) => Effect<Logger<Message, void>, never, R | Scope>
  <Message, Output, R>(
    self: Logger<Message, Output>,
    window: DurationInput,
    f: (messages: Array<Types.NoInfer<Output>>) => Effect<void, never, R>
  ): Effect<Logger<Message, void>, never, Scope | R>
}
```
