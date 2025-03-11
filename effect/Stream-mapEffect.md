## mapEffect

Maps over elements of the stream with the specified effectful function.

**Example**

```ts
import { Effect, Random, Stream } from "effect"

const stream = Stream.make(10, 20, 30).pipe(
  Stream.mapEffect((n) => Random.nextIntBetween(0, n))
)

// Effect.runPromise(Stream.runCollect(stream)).then(console.log)
// Example Output: { _id: 'Chunk', values: [ 7, 19, 8 ] }
```

**Signature**

```ts
declare const mapEffect: { <A, A2, E2, R2>(f: (a: A) => Effect.Effect<A2, E2, R2>, options?: { readonly concurrency?: number | "unbounded" | undefined; readonly unordered?: boolean | undefined; } | undefined): <E, R>(self: Stream<A, E, R>) => Stream<A2, E2 | E, R2 | R>; <A, A2, E2, R2, K>(f: (a: A) => Effect.Effect<A2, E2, R2>, options: { readonly key: (a: A) => K; readonly bufferSize?: number | undefined; }): <E, R>(self: Stream<A, E, R>) => Stream<A2, E2 | E, R2 | R>; <A, E, R, A2, E2, R2>(self: Stream<A, E, R>, f: (a: A) => Effect.Effect<A2, E2, R2>, options?: { readonly concurrency?: number | "unbounded" | undefined; readonly unordered?: boolean | undefined; } | undefined): Stream<A2, E | E2, R | R2>; <A, E, R, A2, E2, R2, K>(self: Stream<A, E, R>, f: (a: A) => Effect.Effect<A2, E2, R2>, options: { readonly key: (a: A) => K; readonly bufferSize?: number | undefined; }): Stream<A2, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L2899)

Since v2.0.0