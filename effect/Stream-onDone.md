# onDone

Runs the specified effect if this stream ends.

To import and use `onDone` from the "Stream" module:

```ts
import * as Stream from 'effect/Stream'

// Can be accessed like this
Stream.onDone
```

**Signature**

```ts
export declare const onDone: {
  <R2, _>(cleanup: () => Effect.Effect<R2, never, _>): <R, E, A>(self: Stream<R, E, A>) => Stream<R2 | R, E, A>
  <R, E, A, R2, _>(self: Stream<R, E, A>, cleanup: () => Effect.Effect<R2, never, _>): Stream<R | R2, E, A>
}
```
