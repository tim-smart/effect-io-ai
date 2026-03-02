Package: `effect`<br />
Module: `Stream`<br />

## Stream.scanEffect

Effectfully accumulates state and emits the initial state plus each accumulated state.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const program = Effect.gen(function*() {
  const states = yield* Stream.make(1, 2, 3).pipe(
    Stream.scanEffect(0, (sum, n) => Effect.succeed(sum + n)),
    Stream.runCollect
  )
  yield* Console.log(states)
  // Output: [ 0, 1, 3, 6 ]
})
```

**Signature**

```ts
declare const scanEffect: { <S, A, E2, R2>(initial: S, f: (s: S, a: A) => Effect.Effect<S, E2, R2>): <E, R>(self: Stream<A, E, R>) => Stream<S, E | E2, R | R2>; <A, E, R, S, E2, R2>(self: Stream<A, E, R>, initial: S, f: (s: S, a: A) => Effect.Effect<S, E2, R2>): Stream<S, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L7157)

Since v2.0.0