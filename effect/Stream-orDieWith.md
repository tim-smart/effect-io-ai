# orDieWith

Keeps none of the errors, and terminates the stream with them, using the
specified function to convert the `E` into a defect.

To import and use `orDieWith` from the "Stream" module:

```ts
import * as Stream from 'effect/Stream'

// Can be accessed like this
Stream.orDieWith
```

**Signature**

```ts
export declare const orDieWith: {
  <E>(f: (e: E) => unknown): <R, A>(self: Stream<R, E, A>) => Stream<R, never, A>
  <R, A, E>(self: Stream<R, E, A>, f: (e: E) => unknown): Stream<R, never, A>
}
```
