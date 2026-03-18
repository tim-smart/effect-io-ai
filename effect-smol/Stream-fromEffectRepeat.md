Package: `effect`<br />
Module: `Stream`<br />

## Stream.fromEffectRepeat

Creates a stream from an effect producing a value of type `A` which repeats forever.

**Previously Known As**

This API replaces the following from Effect 3.x:

- `Stream.repeatEffect`

**Example**

```ts
import { Console, Effect, Random, Stream } from "effect"

const program = Effect.gen(function*() {
  const stream = Stream.fromEffectRepeat(Random.nextInt).pipe(
    Stream.take(5)
  )
  const values = yield* Stream.runCollect(stream)
  yield* Console.log(values)
})

Effect.runPromise(program)
// Output: [ 3891571149, 4239494205, 2352981603, 2339111046, 1488052210 ]
```

**Signature**

```ts
declare const fromEffectRepeat: <A, E, R>(effect: Effect.Effect<A, E, R>) => Stream<A, Pull.ExcludeDone<E>, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L408)

Since v4.0.0