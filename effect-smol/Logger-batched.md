Package: `effect`<br />
Module: `Logger`<br />

## Logger.batched

Returns a new `Logger` which will aggregate logs output by the specified
`Logger` over the provided `window`. After the `window` has elapsed, the
provided `flush` function will be called with the logs aggregated during
the last `window`.

This is useful for implementing efficient batch processing of logs, such as
writing multiple log entries to a database or file in a single operation.

**Example**

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Logger.ts#L794)

Since v4.0.0