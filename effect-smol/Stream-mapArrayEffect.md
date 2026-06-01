Package: `effect`<br />
Module: `Stream`<br />

## Stream.mapArrayEffect

Maps over non-empty array chunks emitted by the stream effectfully.

**When to use**

Use when transformation needs to see and replace each non-empty emitted chunk
effectfully instead of mapping individual stream elements.

**Example** (Effectfully mapping stream chunks)

```ts
import { Array, Console, Effect, Stream } from "effect"

const program = Effect.gen(function*() {
  const result = yield* Stream.fromArray([1, 2, 3, 4]).pipe(
    Stream.rechunk(2),
    Stream.mapArrayEffect((chunk, index) =>
      Effect.succeed(Array.map(chunk, (n) => n + index * 10))
    ),
    Stream.runCollect
  )
  yield* Console.log(result)
})

Effect.runPromise(program)
// Output: [1, 2, 13, 14]
```

**Signature**

```ts
declare const mapArrayEffect: { <A, B, E2, R2>(f: (a: Arr.NonEmptyReadonlyArray<A>, i: number) => Effect.Effect<Arr.NonEmptyReadonlyArray<B>, E2, R2>): <E, R>(self: Stream<A, E, R>) => Stream<B, E | E2, R | R2>; <A, E, R, B, E2, R2>(self: Stream<A, E, R>, f: (a: Arr.NonEmptyReadonlyArray<A>, i: number) => Effect.Effect<Arr.NonEmptyReadonlyArray<B>, E2, R2>): Stream<B, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L2207)

Since v4.0.0