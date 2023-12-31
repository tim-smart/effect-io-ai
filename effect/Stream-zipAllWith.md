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
    readonly other: Stream<R2, E2, A2>
    readonly onSelf: (a: A) => A3
    readonly onOther: (a2: A2) => A3
    readonly onBoth: (a: A, a2: A2) => A3
  }): <R, E>(self: Stream<R, E, A>) => Stream<R2 | R, E2 | E, A3>
  <R, E, R2, E2, A2, A, A3>(
    self: Stream<R, E, A>,
    options: {
      readonly other: Stream<R2, E2, A2>
      readonly onSelf: (a: A) => A3
      readonly onOther: (a2: A2) => A3
      readonly onBoth: (a: A, a2: A2) => A3
    }
  ): Stream<R | R2, E | E2, A3>
}
```
