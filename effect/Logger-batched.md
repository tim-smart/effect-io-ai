Package: `effect`<br />
Module: `Logger`<br />

## Logger.batched

Creates a scoped logger that batches the output of another logger.

**Details**

The returned effect starts a scoped background process that periodically
passes buffered outputs to `flush`. When the scope closes, the background
process is interrupted and any remaining buffered entries are flushed.

**Example** (Batching logger output)

```ts
import { Duration, Effect, Logger } from "effect"

// Create a batched logger that flushes every 5 seconds
const batchedLogger = Logger.batched(Logger.formatJson, {
  window: Duration.seconds(5),
  flush: (messages) =>
    Effect.sync(() => {
      console.log(`Flushing ${messages.length} log entries:`)
      messages.forEach((msg, i) => console.log(`${i + 1}. ${msg}`))
    })
})

const program = Effect.gen(function*() {
  const logger = yield* batchedLogger

  yield* Effect.provide(
    Effect.all([
      Effect.log("Event 1"),
      Effect.log("Event 2"),
      Effect.log("Event 3"),
      Effect.sleep(Duration.seconds(6)), // Trigger flush
      Effect.log("Event 4")
    ]),
    Logger.layer([logger])
  )
})

// Remote batch logging example
const remoteBatchLogger = Logger.batched(Logger.formatStructured, {
  window: Duration.seconds(10),
  flush: (entries) =>
    Effect.sync(() => {
      // Send batch to remote logging service
      console.log(`Sending ${entries.length} log entries to remote service`)
    })
})
```

**Signature**

```ts
declare const batched: (<Output>(options: { readonly window: Duration.Input; readonly flush: (messages: Array<NoInfer<Output>>) => Effect.Effect<void>; }) => <Message>(self: Logger<Message, Output>) => Effect.Effect<Logger<Message, void>, never, Scope.Scope>) & (<Message, Output>(self: Logger<Message, Output>, options: { readonly window: Duration.Input; readonly flush: (messages: Array<NoInfer<Output>>) => Effect.Effect<void>; }) => Effect.Effect<Logger<Message, void>, never, Scope.Scope>)
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Logger.ts#L764)

Since v2.0.0