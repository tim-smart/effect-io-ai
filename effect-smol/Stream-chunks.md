Package: `effect`<br />
Module: `Stream`<br />

## Stream.chunks

Exposes the underlying chunks as a stream of non-empty arrays.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const program = Effect.gen(function*() {
  const chunks = yield* Stream.make(1, 2, 3, 4).pipe(
    Stream.rechunk(2),
    Stream.chunks,
    Stream.runCollect
  )
  yield* Console.log(chunks)
})

Effect.runPromise(program)
// Output: [ [ 1, 2 ], [ 3, 4 ] ]
```

**Signature**

```ts
declare const chunks: <A, E, R>(self: Stream<A, E, R>) => Stream<Arr.NonEmptyReadonlyArray<A>, E, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L6493)

Since v2.0.0