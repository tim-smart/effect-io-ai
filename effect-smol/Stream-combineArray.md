Package: `effect`<br />
Module: `Stream`<br />

## Stream.combineArray

Combines two streams chunk-by-chunk with a stateful pull function.

**When to use**

Use to coordinate pulling chunks from two streams when each emitted chunk
depends on both sides and local state.

**Details**

The combining function receives the current state and pull functions for the
left and right streams. It returns the next non-empty chunk together with the
next state.

**Example** (Combining stream chunks with state)

```ts
import { Console, Effect, Stream } from "effect"

const stream = Stream.make(1, 2).pipe(
  Stream.combineArray(
    Stream.make(10, 20),
    () => true,
    (useLeft, pullLeft, pullRight) =>
      Effect.gen(function*() {
        const array = useLeft ? yield* pullLeft : yield* pullRight
        return [array, !useLeft] as const
      })
  )
)

const program = Effect.gen(function*() {
  const values = yield* Stream.runCollect(stream)
  yield* Console.log(values)
})

Effect.runPromise(program)
// Output: [ 1, 2, 10, 20 ]
```

**Signature**

```ts
declare const combineArray: { <A2, E2, R2, S, E, A, A3, E3, R3>(that: Stream<A2, E2, R2>, s: LazyArg<S>, f: (s: S, pullLeft: Pull.Pull<Arr.NonEmptyReadonlyArray<A>, E, void>, pullRight: Pull.Pull<Arr.NonEmptyReadonlyArray<A2>, E2, void>) => Effect.Effect<readonly [Arr.NonEmptyReadonlyArray<A3>, S], E3, R3>): <R>(self: Stream<A, E, R>) => Stream<A3, Pull.ExcludeDone<E3>, R2 | R3 | R>; <R, A2, E2, R2, S, E, A, A3, E3, R3>(self: Stream<A, E, R>, that: Stream<A2, E2, R2>, s: LazyArg<S>, f: (s: S, pullLeft: Pull.Pull<Arr.NonEmptyReadonlyArray<A>, E, void>, pullRight: Pull.Pull<Arr.NonEmptyReadonlyArray<A2>, E2, void>) => Effect.Effect<readonly [Arr.NonEmptyReadonlyArray<A3>, S], E3, R3>): Stream<A3, Pull.ExcludeDone<E3>, R | R2 | R3>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L7351)

Since v4.0.0