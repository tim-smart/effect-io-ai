# flatMap

Returns a stream made of the concatenation in strict order of all the
streams produced by passing each element of this stream to `f0`

To import and use `flatMap` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.flatMap
```

**Signature**

```ts
export declare const flatMap: {
  <A, A2, E2, R2>(
    f: (a: A) => Stream<A2, E2, R2>,
    options?:
      | {
          readonly concurrency?: number | "unbounded" | undefined
          readonly bufferSize?: number | undefined
          readonly switch?: boolean | undefined
        }
      | undefined
  ): <E, R>(self: Stream<A, E, R>) => Stream<A2, E2 | E, R2 | R>
  <A, E, R, A2, E2, R2>(
    self: Stream<A, E, R>,
    f: (a: A) => Stream<A2, E2, R2>,
    options?:
      | {
          readonly concurrency?: number | "unbounded" | undefined
          readonly bufferSize?: number | undefined
          readonly switch?: boolean | undefined
        }
      | undefined
  ): Stream<A2, E | E2, R | R2>
}
```
