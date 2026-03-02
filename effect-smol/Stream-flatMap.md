Package: `effect`<br />
Module: `Stream`<br />

## Stream.flatMap

Maps each element to a stream and concatenates the results in order.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const program = Effect.gen(function*() {
  const values = yield* Stream.make(1, 2, 3).pipe(
    Stream.flatMap((n) => Stream.make(n, n * 2)),
    Stream.runCollect
  )
  yield* Console.log(values)
})

Effect.runPromise(program)
// Output: [ 1, 2, 2, 4, 3, 6 ]
```

**Signature**

```ts
declare const flatMap: { <A, A2, E2, R2>(f: (a: A) => Stream<A2, E2, R2>, options?: { readonly concurrency?: number | "unbounded" | undefined; readonly bufferSize?: number | undefined; } | undefined): <E, R>(self: Stream<A, E, R>) => Stream<A2, E2 | E, R2 | R>; <A, E, R, A2, E2, R2>(self: Stream<A, E, R>, f: (a: A) => Stream<A2, E2, R2>, options?: { readonly concurrency?: number | "unbounded" | undefined; readonly bufferSize?: number | undefined; } | undefined): Stream<A2, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L2259)

Since v2.0.0