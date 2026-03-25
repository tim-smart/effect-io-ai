Package: `effect`<br />
Module: `Stream`<br />

## Stream.runSum

Runs the stream and returns the numeric sum of its elements.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const program = Effect.gen(function*() {
  const total = yield* Stream.runSum(Stream.make(1, 2, 3))
  yield* Console.log(total)
})

Effect.runPromise(program)
// 6
```

**Signature**

```ts
declare const runSum: <E, R>(self: Stream<number, E, R>) => Effect.Effect<number, E, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L9882)

Since v2.0.0