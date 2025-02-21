# withLogSpan

Adds a log span to an effect for tracking and logging its execution duration.

**Details**

This function wraps an effect with a log span, providing performance
monitoring and debugging capabilities. The log span tracks the duration of
the wrapped effect and logs it with the specified label. This is particularly
useful when analyzing time-sensitive operations or understanding the
execution time of specific tasks in your application.

The logged output will include the label and the total time taken for the
operation. The span information is included in the log metadata, making it
easy to trace performance metrics in logs.

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
