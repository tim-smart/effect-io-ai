# mapError

Transforms the errors emitted by this stream using `f`.

To import and use `mapError` from the "Stream" module:

ts
import \* as Stream from "effect/Stream"
// Can be accessed like this
Stream.mapError
undefined

**Signature**

```ts
export declare const mapError: {
  <E, E2>(f: (error: E) => E2): <A, R>(self: Stream<A, E, R>) => Stream<A, E2, R>
  <A, E, R, E2>(self: Stream<A, E, R>, f: (error: E) => E2): Stream<A, E2, R>
}
```
