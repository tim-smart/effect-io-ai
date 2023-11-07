# refineOrDieWith

Keeps some of the errors, and terminates the fiber with the rest, using the
specified function to convert the `E` into a defect.

To import and use `refineOrDieWith` from the "Stream" module:

```ts
import * as Stream from 'effect/Stream'

// Can be accessed like this
Stream.refineOrDieWith
```

**Signature**

```ts
export declare const refineOrDieWith: {
  <E, E2>(pf: (error: E) => Option.Option<E2>, f: (error: E) => unknown): <R, A>(
    self: Stream<R, E, A>
  ) => Stream<R, E2, A>
  <R, A, E, E2>(self: Stream<R, E, A>, pf: (error: E) => Option.Option<E2>, f: (error: E) => unknown): Stream<R, E2, A>
}
```
