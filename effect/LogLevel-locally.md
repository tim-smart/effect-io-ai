# locally

Locally applies the specified `LogLevel` to an `Effect` workflow, reverting
to the previous `LogLevel` after the `Effect` workflow completes.

To import and use `locally` from the "LogLevel" module:

```ts
import * as LogLevel from 'effect/LogLevel'

// Can be accessed like this
LogLevel.locally
```

**Signature**

```ts
export declare const locally: {
  (self: LogLevel): <R, E, B>(use: Effect.Effect<R, E, B>) => Effect.Effect<R, E, B>
  <R, E, B>(use: Effect.Effect<R, E, B>, self: LogLevel): Effect.Effect<R, E, B>
}
```
