# locally

Locally applies the specified `LogLevel` to an `Effect` workflow, reverting
to the previous `LogLevel` after the `Effect` workflow completes.

To import and use `locally` from the "Level" module:

```ts
import * as Level from '@effect/io/Logger/Level'

// Can be accessed like this
Level.locally
```

**Signature**

```ts
export declare const locally: {
  (self: LogLevel): <R, E, B>(use: Effect.Effect<R, E, B>) => Effect.Effect<R, E, B>
  <R, E, B>(use: Effect.Effect<R, E, B>, self: LogLevel): Effect.Effect<R, E, B>
}
```
