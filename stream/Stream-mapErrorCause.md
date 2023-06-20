# mapErrorCause

Transforms the full causes of failures emitted by this stream.

To import and use `mapErrorCause` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.mapErrorCause
```

**Signature**

```ts
export declare const mapErrorCause: {
  <E, E2>(f: (cause: Cause.Cause<E>) => Cause.Cause<E2>): <R, A>(self: Stream<R, E, A>) => Stream<R, E2, A>
  <R, A, E, E2>(self: Stream<R, E, A>, f: (cause: Cause.Cause<E>) => Cause.Cause<E2>): Stream<R, E2, A>
}
```
