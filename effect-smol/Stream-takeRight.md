Package: `effect`<br />
Module: `Stream`<br />

## Stream.takeRight

Keeps the last `n` elements from this stream.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const program = Effect.gen(function*() {
  const values = yield* Stream.range(1, 6).pipe(
    Stream.takeRight(3),
    Stream.runCollect
  )
  yield* Console.log(values)
})

Effect.runPromise(program)
// Output: [ 4, 5, 6 ]
```

**Signature**

```ts
declare const takeRight: { (n: number): <A, E, R>(self: Stream<A, E, R>) => Stream<A, E, R>; <A, E, R>(self: Stream<A, E, R>, n: number): Stream<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L5830)

Since v2.0.0