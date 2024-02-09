# zipAll

Zips this stream with another point-wise, creating a new stream of pairs of
elements from both sides.

The defaults `defaultLeft` and `defaultRight` will be used if the streams
have different lengths and one of the streams has ended before the other.

To import and use `zipAll` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.zipAll
```

**Signature**

```ts
export declare const zipAll: {
  <R2, E2, A2, A>(options: {
    readonly other: Stream<A2, E2, R2>
    readonly defaultSelf: A
    readonly defaultOther: A2
  }): <R, E>(self: Stream<A, E, R>) => Stream<[A, A2], E2 | E, R2 | R>
  <R, E, R2, E2, A2, A>(
    self: Stream<A, E, R>,
    options: { readonly other: Stream<A2, E2, R2>; readonly defaultSelf: A; readonly defaultOther: A2 }
  ): Stream<[A, A2], E | E2, R | R2>
}
```
