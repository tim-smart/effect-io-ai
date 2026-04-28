Package: `effect`<br />
Module: `Stream`<br />

## Stream.toAsyncIterableEffect

Creates an effect that yields an `AsyncIterable` using the current services.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const stream = Stream.make(1, 2, 3)

const program = Effect.gen(function*() {
  const iterable = yield* Stream.toAsyncIterableEffect(stream)
  const values = yield* Effect.promise(async () => {
    const collected: Array<number> = []
    for await (const value of iterable) {
      collected.push(value)
    }
    return collected
  })
  yield* Console.log(values)
})

Effect.runPromise(program)
//=> [ 1, 2, 3 ]
```

**Signature**

```ts
declare const toAsyncIterableEffect: <A, E, R>(self: Stream<A, E, R>) => Effect.Effect<AsyncIterable<A>, never, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L10619)

Since v2.0.0