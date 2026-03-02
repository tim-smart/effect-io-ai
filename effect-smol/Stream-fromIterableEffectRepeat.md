Package: `effect`<br />
Module: `Stream`<br />

## Stream.fromIterableEffectRepeat

Creates a stream by repeatedly running an effect that yields an iterable of values.

**Previously Known As**

This API replaces the following from Effect 3.x:

- `Stream.repeatEffectChunk`

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const program = Effect.gen(function*() {
  const stream = Stream.fromIterableEffectRepeat(Effect.succeed([1, 2])).pipe(
    Stream.take(5)
  )
  const values = yield* Stream.runCollect(stream)
  yield* Console.log(values)
})

Effect.runPromise(program)
// Output: [ 1, 2, 1, 2, 1 ]
```

**Signature**

```ts
declare const fromIterableEffectRepeat: <A, E, R>(iterable: Effect.Effect<Iterable<A>, E, R>) => Stream<A, Pull.ExcludeDone<E>, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L1055)

Since v4.0.0