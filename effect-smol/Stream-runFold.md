Package: `effect`<br />
Module: `Stream`<br />

## Stream.runFold

Runs the stream and folds elements using a pure reducer.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const program = Effect.gen(function*() {
  const total = yield* Stream.runFold(
    Stream.make(1, 2, 3),
    () => 0,
    (acc, n) => acc + n
  )
  yield* Console.log(total)
})

Effect.runPromise(program)
// 6
```

**Signature**

```ts
declare const runFold: { <Z, A>(initial: LazyArg<Z>, f: (acc: Z, a: A) => Z): <E, R>(self: Stream<A, E, R>) => Effect.Effect<Z, E, R>; <A, E, R, Z>(self: Stream<A, E, R>, initial: LazyArg<Z>, f: (acc: Z, a: A) => Z): Effect.Effect<Z, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L9827)

Since v2.0.0