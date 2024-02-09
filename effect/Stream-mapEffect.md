# mapEffect

Maps over elements of the stream with the specified effectful function.

To import and use `mapEffect` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.mapEffect
```

**Signature**

```ts
export declare const mapEffect: {
  <A, R2, E2, A2>(
    f: (a: A) => Effect.Effect<A2, E2, R2>,
    options?:
      | { readonly concurrency?: number | "unbounded" | undefined; readonly unordered?: boolean | undefined }
      | undefined
  ): <R, E>(self: Stream<A, E, R>) => Stream<A2, E2 | E, R2 | R>
  <A, R2, E2, A2, K>(
    f: (a: A) => Effect.Effect<A2, E2, R2>,
    options: { readonly key: (a: A) => K; readonly bufferSize?: number | undefined }
  ): <R, E>(self: Stream<A, E, R>) => Stream<A2, E2 | E, R2 | R>
  <R, E, A, R2, E2, A2>(
    self: Stream<A, E, R>,
    f: (a: A) => Effect.Effect<A2, E2, R2>,
    options?:
      | { readonly concurrency?: number | "unbounded" | undefined; readonly unordered?: boolean | undefined }
      | undefined
  ): Stream<A2, E | E2, R | R2>
  <R, E, A, R2, E2, A2, K>(
    self: Stream<A, E, R>,
    f: (a: A) => Effect.Effect<A2, E2, R2>,
    options: { readonly key: (a: A) => K; readonly bufferSize?: number | undefined }
  ): Stream<A2, E | E2, R | R2>
}
```
