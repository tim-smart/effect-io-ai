# mapError

Transforms the errors emitted by this stream using `f`.

To import and use `mapError` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.mapError
```

**Signature**

```ts
export declare const mapError: {
  <E, E2>(f: (error: E) => E2): <R, A>(self: Stream<R, E, A>) => Stream<R, E2, A>
  <R, A, E, E2>(self: Stream<R, E, A>, f: (error: E) => E2): Stream<R, E2, A>
}
```
