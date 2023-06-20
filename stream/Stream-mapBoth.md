# mapBoth

Returns a stream whose failure and success channels have been mapped by the
specified pair of functions, `f` and `g`.

To import and use `mapBoth` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.mapBoth
```

**Signature**

```ts
export declare const mapBoth: {
  <E, E2, A, A2>(f: (e: E) => E2, g: (a: A) => A2): <R>(self: Stream<R, E, A>) => Stream<R, E2, A2>
  <R, E, E2, A, A2>(self: Stream<R, E, A>, f: (e: E) => E2, g: (a: A) => A2): Stream<R, E2, A2>
}
```
