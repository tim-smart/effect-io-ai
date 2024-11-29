# mapErrorCause

Transforms the full causes of failures emitted by this stream.

To import and use `mapErrorCause` from the "Stream" module:

ts
import \* as Stream from "effect/Stream"
// Can be accessed like this
Stream.mapErrorCause
undefined

**Signature**

```ts
export declare const mapErrorCause: {
  <E, E2>(f: (cause: Cause.Cause<E>) => Cause.Cause<E2>): <A, R>(self: Stream<A, E, R>) => Stream<A, E2, R>
  <A, E, R, E2>(self: Stream<A, E, R>, f: (cause: Cause.Cause<E>) => Cause.Cause<E2>): Stream<A, E2, R>
}
```
