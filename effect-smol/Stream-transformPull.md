Package: `effect`<br />
Module: `Stream`<br />

## Stream.transformPull

Derive a stream by transforming its pull effect.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const stream = Stream.make(1, 2, 3)

const transformed = Stream.transformPull(stream, (pull) => Effect.succeed(pull))

const program = Effect.gen(function*() {
  const values = yield* Stream.runCollect(transformed)
  yield* Console.log(values)
})

Effect.runPromise(program)
// Output: [ 1, 2, 3 ]
```

**Signature**

```ts
declare const transformPull: <A, E, R, B, E2, R2, EX, RX>(self: Stream<A, E, R>, f: (pull: Pull.Pull<Arr.NonEmptyReadonlyArray<A>, E, void>, scope: Scope.Scope) => Effect.Effect<Pull.Pull<Arr.NonEmptyReadonlyArray<B>, E2, void, R2>, EX, RX>) => Stream<B, EX | Pull.ExcludeDone<E2>, R | R2 | RX>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L628)

Since v4.0.0