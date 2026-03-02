Package: `effect`<br />
Module: `Stream`<br />

## Stream.runCollect

Runs the stream and collects all elements into an array.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const stream = Stream.make(1, 2, 3, 4, 5)

const program = Effect.gen(function*() {
  const collected = yield* Stream.runCollect(stream)
  yield* Console.log(collected)
})

Effect.runPromise(program)
// [1, 2, 3, 4, 5]
```

**Signature**

```ts
declare const runCollect: <A, E, R>(self: Stream<A, E, R>) => Effect.Effect<Array<A>, E, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L9741)

Since v2.0.0