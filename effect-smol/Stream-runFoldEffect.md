Package: `effect`<br />
Module: `Stream`<br />

## Stream.runFoldEffect

Runs the stream and folds elements using an effectful reducer.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const program = Effect.gen(function*() {
  const total = yield* Stream.runFoldEffect(
    Stream.make(1, 2, 3),
    () => 0,
    (acc, n) => Effect.succeed(acc + n)
  )
  yield* Console.log(total)
})

Effect.runPromise(program)
// 6
```

**Signature**

```ts
declare const runFoldEffect: { <Z, A, EX, RX>(initial: LazyArg<Z>, f: (acc: Z, a: A) => Effect.Effect<Z, EX, RX>): <E, R>(self: Stream<A, E, R>) => Effect.Effect<Z, E | EX, R | RX>; <A, E, R, Z, EX, RX>(self: Stream<A, E, R>, initial: LazyArg<Z>, f: (acc: Z, a: A) => Effect.Effect<Z, EX, RX>): Effect.Effect<Z, E | EX, R | RX>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L10039)

Since v2.0.0