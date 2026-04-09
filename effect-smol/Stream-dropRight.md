Package: `effect`<br />
Module: `Stream`<br />

## Stream.dropRight

Drops the last specified number of elements from this stream.

Keeps the last `n` elements in memory to drop them on completion.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const program = Effect.gen(function*() {
  const result = yield* Stream.make(1, 2, 3, 4, 5).pipe(
    Stream.dropRight(2),
    Stream.runCollect
  )
  yield* Console.log(result)
})

Effect.runPromise(program)
// Output: [ 1, 2, 3 ]
```

**Signature**

```ts
declare const dropRight: { (n: number): <A, E, R>(self: Stream<A, E, R>) => Stream<A, E, R>; <A, E, R>(self: Stream<A, E, R>, n: number): Stream<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L6522)

Since v2.0.0