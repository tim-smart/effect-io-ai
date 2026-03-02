Package: `effect`<br />
Module: `Stream`<br />

## Stream.mapArray

Transforms each emitted chunk using the provided function, which receives the chunk and its index.

**Previously Known As**

This API replaces the following from Effect 3.x:

- `Stream.mapChunks`

**Example**

```ts
import { Array, Console, Effect, Stream } from "effect"

const program = Effect.gen(function*() {
  const result = yield* Stream.make(1, 2, 3, 4).pipe(
    Stream.rechunk(2),
    Stream.mapArray((chunk, index) => Array.map(chunk, (n) => n + index)),
    Stream.runCollect
  )
  yield* Console.log(result)
})

Effect.runPromise(program)
// Output: [ 1, 2, 4, 5 ]
```

**Signature**

```ts
declare const mapArray: { <A, B>(f: (a: Arr.NonEmptyReadonlyArray<A>, i: number) => Arr.NonEmptyReadonlyArray<B>): <E, R>(self: Stream<A, E, R>) => Stream<B, E, R>; <A, E, R, B>(self: Stream<A, E, R>, f: (a: Arr.NonEmptyReadonlyArray<A>, i: number) => Arr.NonEmptyReadonlyArray<B>): Stream<B, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L1800)

Since v2.0.0