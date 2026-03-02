Package: `effect`<br />
Module: `Stream`<br />

## Stream.combine

Combines elements from this stream and the specified stream by repeatedly
applying a stateful function that can pull from either side.

Where possible, prefer `Stream.combineArray` for a more efficient
implementation.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const stream = Stream.combine(
  Stream.make("A", "B", "C"),
  Stream.make(1, 2, 3),
  () => true,
  (takeLeft, pullLeft, pullRight) =>
    takeLeft
      ? Effect.map(pullLeft, (value) => [`L:${value}`, false] as const)
      : Effect.map(pullRight, (value) => [`R:${value}`, true] as const)
)

const program = Effect.gen(function*() {
  const output = yield* Stream.runCollect(stream)
  yield* Console.log(output)
})

Effect.runPromise(program)
// Output: [ "L:A", "R:1", "L:B", "R:2", "L:C", "R:3" ]
```

**Signature**

```ts
declare const combine: { <A2, E2, R2, S, E, A, A3, E3, R3>(that: Stream<A2, E2, R2>, s: LazyArg<S>, f: (s: S, pullLeft: Pull.Pull<A, E, void>, pullRight: Pull.Pull<A2, E2, void>) => Effect.Effect<readonly [A3, S], E3, R3>): <R>(self: Stream<A, E, R>) => Stream<A3, E3, R2 | R3 | R>; <A, E, R, A2, E2, R2, S, A3, E3, R3>(self: Stream<A, E, R>, that: Stream<A2, E2, R2>, s: LazyArg<S>, f: (s: S, pullLeft: Pull.Pull<A, E, void>, pullRight: Pull.Pull<A2, E2, void>) => Effect.Effect<readonly [A3, S], E3, R3>): Stream<A3, E3, R | R2 | R3>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L6674)

Since v2.0.0