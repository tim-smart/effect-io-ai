Package: `effect`<br />
Module: `Stream`<br />

## Stream.runCount

Runs the stream and returns the number of elements emitted.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const stream = Stream.make(1, 2, 3, 4, 5)

const program = Effect.gen(function* () {
  const count = yield* Stream.runCount(stream)
  yield* Console.log(count)
})

Effect.runPromise(program)
// 5
```

**Signature**

```ts
declare const runCount: <A, E, R>(self: Stream<A, E, R>) => Effect.Effect<number, E, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L9939)

Since v2.0.0