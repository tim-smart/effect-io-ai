Package: `effect`<br />
Module: `Stream`<br />

## Stream.transformPullBracket

Transforms a stream by effectfully transforming its pull effect.

A forked scope is also provided to the transformation function, which is
closed once the resulting stream has finished processing.

**Example**

```ts
import { Console, Effect, Scope, Stream } from "effect"

const stream = Stream.make(1, 2, 3)

const transformed = Stream.transformPullBracket(
  stream,
  (pull, _scope, forkedScope) =>
    Effect.gen(function*() {
      yield* Scope.addFinalizer(forkedScope, Console.log("Releasing scope"))
      return pull
    })
)

const program = Effect.gen(function*() {
  const values = yield* Stream.runCollect(transformed)
  yield* Console.log(values)
})

Effect.runPromise(program)
// Output: [1, 2, 3]
// Releasing scope
```

**Signature**

```ts
declare const transformPullBracket: <A, E, R, B, E2, R2, EX, RX>(self: Stream<A, E, R>, f: (pull: Pull.Pull<Arr.NonEmptyReadonlyArray<A>, E, void, R>, scope: Scope.Scope, forkedScope: Scope.Scope) => Effect.Effect<Pull.Pull<Arr.NonEmptyReadonlyArray<B>, E2, void, R2>, EX, RX>) => Stream<B, EX | Pull.ExcludeDone<E2>, R | R2 | RX>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L603)

Since v4.0.0