# annotateLogs

Augments log outputs by appending custom annotations to log entries generated
within an effect. This function provides a way to add more context and detail
to log messages, making them more informative and easier to trace.

To import and use `annotateLogs` from the "Effect" module:

ts
import \* as Effect from "effect/Effect"
// Can be accessed like this
Effect.annotateLogs
undefined

**Example**

```ts
import { Effect } from "effect"

const program = Effect.gen(function* () {
  yield* Effect.log("message1")
  yield* Effect.log("message2")
}).pipe(Effect.annotateLogs("key", "value")) // Annotation as key/value pair

// Effect.runFork(program)
// timestamp=... level=INFO fiber=#0 message=message1 key=value
// timestamp=... level=INFO fiber=#0 message=message2 key=value
```

**Signature**

```ts
export declare const annotateLogs: {
  (key: string, value: unknown): <A, E, R>(effect: Effect<A, E, R>) => Effect<A, E, R>
  (values: Record<string, unknown>): <A, E, R>(effect: Effect<A, E, R>) => Effect<A, E, R>
  <A, E, R>(effect: Effect<A, E, R>, key: string, value: unknown): Effect<A, E, R>
  <A, E, R>(effect: Effect<A, E, R>, values: Record<string, unknown>): Effect<A, E, R>
}
```
