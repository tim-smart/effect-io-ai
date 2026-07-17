Package: `effect`<br />
Module: `Stream`<br />

## Stream.fromEffect

Creates a stream from an effect.

**Example** (Creating a stream from an effect)

```ts
import { Console, Effect, Stream } from "effect"

const program = Effect.gen(function*() {
  const stream = Stream.fromEffect(Effect.succeed(42))
  const values = yield* Stream.runCollect(stream)
  yield* Console.log(values)
})

Effect.runPromise(program)
// Output: [ 42 ]
```

**Signature**

```ts
declare const fromEffect: <A, E, R>(effect: Effect.Effect<A, E, R>) => Stream<A, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L364)

Since v2.0.0