# zipAllWith

Zips this stream with another point-wise. The provided functions will be
used to create elements for the composed stream.

The functions `left` and `right` will be used if the streams have different
lengths and one of the streams has ended before the other.

To import and use `zipAllWith` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.zipAllWith
```

**Signature**

```ts
export declare const zipAllWith: {
  <R2, E2, A2, A, A3>(options: {
    readonly other: Stream<A2, E2, R2>
    readonly onSelf: (a: A) => A3
    readonly onOther: (a2: A2) => A3
    readonly onBoth: (a: A, a2: A2) => A3
  }): <R, E>(self: Stream<A, E, R>) => Stream<A3, E2 | E, R2 | R>
  <R, E, R2, E2, A2, A, A3>(
    self: Stream<A, E, R>,
    options: {
      readonly other: Stream<A2, E2, R2>
      readonly onSelf: (a: A) => A3
      readonly onOther: (a2: A2) => A3
      readonly onBoth: (a: A, a2: A2) => A3
    }
  ): Stream<A3, E | E2, R | R2>
}
```
