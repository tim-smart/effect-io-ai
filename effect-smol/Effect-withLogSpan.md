Package: `effect`<br />
Module: `Effect`<br />

## Effect.withLogSpan

Adds a span to each log line in this effect.

**Example**

```ts
import { Effect } from "effect"

const databaseOperation = Effect.gen(function*() {
  yield* Effect.log("Connecting to database")
  yield* Effect.log("Executing query")
  yield* Effect.log("Processing results")
  return "data"
})

const httpRequest = Effect.gen(function*() {
  yield* Effect.log("Making HTTP request")
  const data = yield* Effect.withLogSpan(databaseOperation, "db-operation")
  yield* Effect.log("Sending response")
  return data
})

const program = Effect.withLogSpan(httpRequest, "http-handler")

Effect.runPromise(program)
// All log messages will include span information showing the nested operation context
```

**Signature**

```ts
declare const withLogSpan: ((label: string) => <A, E, R>(effect: Effect<A, E, R>) => Effect<A, E, R>) & (<A, E, R>(effect: Effect<A, E, R>, label: string) => Effect<A, E, R>)
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L13345)

Since v2.0.0