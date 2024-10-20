# withLogSpan

Adds a log span to your effects, which tracks and logs the duration of
operations or tasks. This is useful for performance monitoring and debugging
time-sensitive processes.

To import and use `withLogSpan` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.withLogSpan
```

**Example**

```ts
import { Effect } from "effect"

const program = Effect.gen(function* () {
  yield* Effect.sleep("1 second")
  yield* Effect.log("The job is finished!")
}).pipe(Effect.withLogSpan("myspan"))

// Effect.runFork(program)
// timestamp=... level=INFO fiber=#0 message="The job is finished!" myspan=1011ms
```

**Signature**

```ts
export declare const withLogSpan: {
  (label: string): <A, E, R>(effect: Effect<A, E, R>) => Effect<A, E, R>
  <A, E, R>(effect: Effect<A, E, R>, label: string): Effect<A, E, R>
}
```
