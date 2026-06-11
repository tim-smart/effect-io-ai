Package: `effect`<br />
Module: `Stream`<br />

## Stream.fromArrayEffect

Creates a stream from an effect that produces an array of values.

**When to use**

Use when the array must be acquired from an Effect before the stream emits,
and acquisition services or failures should be part of the stream.

**Example** (Creating a stream from an effect that produces an array of values)

```ts
import { Console, Effect, Stream } from "effect"

const program = Effect.gen(function*() {
  const stream = Stream.fromArrayEffect(Effect.succeed(["Ada", "Grace"]))
  const values = yield* Stream.runCollect(stream)
  yield* Console.log(values)
})

Effect.runPromise(program)
// Output: [ "Ada", "Grace" ]
```

**Signature**

```ts
declare const fromArrayEffect: <A, E, R>(effect: Effect.Effect<ReadonlyArray<A>, E, R>) => Stream<A, Pull.ExcludeDone<E>, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L1232)

Since v4.0.0