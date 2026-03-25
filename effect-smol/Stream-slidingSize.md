Package: `effect`<br />
Module: `Stream`<br />

## Stream.slidingSize

Emits sliding windows of `chunkSize` elements, advancing by `stepSize`.

```ts
import { Console, Effect, Stream } from "effect"

const program = Effect.gen(function*() {
  const chunks = yield* Stream.make(1, 2, 3, 4, 5).pipe(
    Stream.slidingSize(3, 2),
    Stream.runCollect
  )
  yield* Console.log(chunks)
})

Effect.runPromise(program)
// Output: [ [ 1, 2, 3 ], [ 3, 4, 5 ] ]
```

**Signature**

```ts
declare const slidingSize: { (chunkSize: number, stepSize: number): <A, E, R>(self: Stream<A, E, R>) => Stream<Arr.NonEmptyReadonlyArray<A>, E, R>; <A, E, R>(self: Stream<A, E, R>, chunkSize: number, stepSize: number): Stream<Arr.NonEmptyReadonlyArray<A>, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L6624)

Since v2.0.0