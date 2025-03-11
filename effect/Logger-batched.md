## batched

Creates a batched logger that groups log messages together and processes them
in intervals.

**Example**

```ts
import { Console, Effect, Logger } from "effect"

const LoggerLive = Logger.replaceScoped(
  Logger.defaultLogger,
  Logger.logfmtLogger.pipe(
    Logger.batched("500 millis", (messages) => Console.log("BATCH", `[\n${messages.join("\n")}\n]`))
  )
)

const program = Effect.gen(function*() {
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
declare const batched: { <Output, R>(window: DurationInput, f: (messages: Array<Types.NoInfer<Output>>) => Effect<void, never, R>): <Message>(self: Logger<Message, Output>) => Effect<Logger<Message, void>, never, R | Scope>; <Message, Output, R>(self: Logger<Message, Output>, window: DurationInput, f: (messages: Array<Types.NoInfer<Output>>) => Effect<void, never, R>): Effect<Logger<Message, void>, never, Scope | R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Logger.ts#L225)

Since v2.0.0