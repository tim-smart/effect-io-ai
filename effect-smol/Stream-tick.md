Package: `effect`<br />
Module: `Stream`<br />

## Stream.tick

Creates a stream that emits `void` immediately once, then emits another
`void` after each specified interval.

**Example** (Emitting ticks on an interval)

```ts
import { Console, Effect, Stream } from "effect"

const program = Effect.gen(function*() {
  const ticks = yield* Stream.tick("200 millis").pipe(
    Stream.take(3),
    Stream.runCollect
  )
  yield* Console.log(ticks)
})

Effect.runPromise(program)
// Output: [ undefined, undefined, undefined ]
```

**Signature**

```ts
declare const tick: (interval: Duration.Input) => Stream<void>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L570)

Since v2.0.0