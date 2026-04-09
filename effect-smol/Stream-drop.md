Package: `effect`<br />
Module: `Stream`<br />

## Stream.drop

Drops the first `n` elements from this stream.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const stream = Stream.make(1, 2, 3, 4, 5)
const result = Stream.drop(stream, 2)

const program = Effect.gen(function*() {
  const items = yield* Stream.runCollect(result)
  yield* Console.log(items)
})

Effect.runPromise(program)
// Output: [ 3, 4, 5 ]
```

**Signature**

```ts
declare const drop: { (n: number): <A, E, R>(self: Stream<A, E, R>) => Stream<A, E, R>; <A, E, R>(self: Stream<A, E, R>, n: number): Stream<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L6283)

Since v2.0.0