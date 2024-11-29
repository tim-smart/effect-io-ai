# locally

Locally applies the specified `LogLevel` to an `Effect` workflow, reverting
to the previous `LogLevel` after the `Effect` workflow completes.

To import and use `locally` from the "LogLevel" module:

ts
import \* as LogLevel from "effect/LogLevel"
// Can be accessed like this
LogLevel.locally
undefined

**Signature**

```ts
export declare const locally: {
  (self: LogLevel): <A, E, R>(use: Effect.Effect<A, E, R>) => Effect.Effect<A, E, R>
  <A, E, R>(use: Effect.Effect<A, E, R>, self: LogLevel): Effect.Effect<A, E, R>
}
```
