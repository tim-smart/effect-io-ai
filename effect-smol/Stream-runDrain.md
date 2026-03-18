Package: `effect`<br />
Module: `Stream`<br />

## Stream.runDrain

Runs the stream for its effects, discarding emitted elements.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const program = Effect.gen(function*() {
  const stream = Stream.make(1, 2, 3).pipe(
    Stream.mapEffect((n) => Console.log(`Processing: ${n}`))
  )

  yield* Stream.runDrain(stream)
})

Effect.runPromise(program)
// Processing: 1
// Processing: 2
// Processing: 3
```

**Signature**

```ts
declare const runDrain: <A, E, R>(self: Stream<A, E, R>) => Effect.Effect<void, E, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L10110)

Since v2.0.0