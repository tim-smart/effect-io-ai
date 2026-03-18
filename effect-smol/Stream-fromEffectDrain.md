Package: `effect`<br />
Module: `Stream`<br />

## Stream.fromEffectDrain

Creates a stream that runs the effect and emits no elements.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const program = Effect.gen(function*() {
  yield* Stream.fromEffectDrain(Console.log("Draining side effect")).pipe(
    Stream.runDrain
  )
})

Effect.runPromise(program)
// Output: Draining side effect
```

**Signature**

```ts
declare const fromEffectDrain: <A, E, R>(effect: Effect.Effect<A, E, R>) => Stream<never, E, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L377)

Since v4.0.0