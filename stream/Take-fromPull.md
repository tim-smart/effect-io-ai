# fromPull

Creates effect from `Effect<R, Option<E>, Chunk<A>>` that does not fail, but
succeeds with the `Take<E, A>`. Errors from stream when pulling are converted
to `Take.failCause`, and the end-of-stream is converted to `Take.end`.

To import and use `fromPull` from the "Take" module:

```ts
import * as Take from '@effect/stream/Take'

// Can be accessed like this
Take.fromPull
```

**Signature**

```ts
export declare const fromPull: <R, E, A>(
  pull: Effect.Effect<R, Option.Option<E>, Chunk.Chunk<A>>
) => Effect.Effect<R, never, Take<E, A>>
```
