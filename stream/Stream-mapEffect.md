# mapEffect

Maps over elements of the stream with the specified effectful function.

To import and use `mapEffect` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.mapEffect
```

**Signature**

```ts
export declare const mapEffect: {
  <A, R2, E2, A2>(
    f: (a: A) => Effect.Effect<R2, E2, A2>,
    options?: { readonly concurrency?: number | 'unbounded'; readonly unordered?: boolean }
  ): <R, E>(self: Stream<R, E, A>) => Stream<R2 | R, E2 | E, A2>
  <A, R2, E2, A2, K>(
    f: (a: A) => Effect.Effect<R2, E2, A2>,
    options: { readonly key: (a: A) => K; readonly bufferSize?: number | undefined }
  ): <R, E>(self: Stream<R, E, A>) => Stream<R2 | R, E2 | E, A2>
  <R, E, A, R2, E2, A2>(
    self: Stream<R, E, A>,
    f: (a: A) => Effect.Effect<R2, E2, A2>,
    options?: { readonly concurrency?: number | 'unbounded'; readonly unordered?: boolean }
  ): Stream<R | R2, E | E2, A2>
  <R, E, A, R2, E2, A2, K>(
    self: Stream<R, E, A>,
    f: (a: A) => Effect.Effect<R2, E2, A2>,
    options: { readonly key: (a: A) => K; readonly bufferSize?: number | undefined }
  ): Stream<R | R2, E | E2, A2>
}
```
