Package: `effect`<br />
Module: `Stream`<br />

## Stream.mapEffect

Maps over elements of the stream with the specified effectful function.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const stream = Stream.make(1, 2, 3)

const mappedStream = stream.pipe(
  Stream.mapEffect((n) =>
    Effect.gen(function*() {
      yield* Console.log(`Processing: ${n}`)
      return n * 2
    })
  )
)

const program = Effect.gen(function*() {
  const result = yield* Stream.runCollect(mappedStream)
  yield* Console.log(result)
})

Effect.runPromise(program)
// Output:
// Processing: 1
// Processing: 2
// Processing: 3
// [2, 4, 6]
```

**Signature**

```ts
declare const mapEffect: { <A, A2, E2, R2>(f: (a: A, i: number) => Effect.Effect<A2, E2, R2>, options?: { readonly concurrency?: number | "unbounded" | undefined; readonly unordered?: boolean | undefined; } | undefined): <E, R>(self: Stream<A, E, R>) => Stream<A2, E2 | E, R2 | R>; <A, E, R, A2, E2, R2>(self: Stream<A, E, R>, f: (a: A, i: number) => Effect.Effect<A2, E2, R2>, options?: { readonly concurrency?: number | "unbounded" | undefined; readonly unordered?: boolean | undefined; } | undefined): Stream<A2, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L1856)

Since v2.0.0