# fromPull

Creates effect from `Effect<Chunk<A>, Option<E>, R>` that does not fail, but
succeeds with the `Take<A, E>`. Errors from stream when pulling are converted
to `Take.failCause`, and the end-of-stream is converted to `Take.end`.

To import and use `fromPull` from the "Take" module:

ts
import \* as Take from "effect/Take"
// Can be accessed like this
Take.fromPull
undefined

**Signature**

```ts
export declare const fromPull: <A, E, R>(
  pull: Effect.Effect<Chunk.Chunk<A>, Option.Option<E>, R>
) => Effect.Effect<Take<A, E>, never, R>
```
