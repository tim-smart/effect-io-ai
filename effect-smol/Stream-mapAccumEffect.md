Package: `effect`<br />
Module: `Stream`<br />

## Stream.mapAccumEffect

Statefully and effectfully maps each element, emitting zero or more output
values per input.

**Details**

The mapping effect receives the current state and element, then returns the
next state plus the values to emit. The state is threaded through the
stream.

**Example** (Effectfully mapping stream values with state)

```ts
import { Console, Effect, Stream } from "effect"

const program = Effect.gen(function*() {
  const result = yield* Stream.make(1, 1, 1).pipe(
    Stream.mapAccumEffect(() => 0, (total, n) =>
      Effect.succeed([total + n, [total + n]])
    ),
    Stream.runCollect
  )

  yield* Console.log(result)
})

Effect.runPromise(program)
// Output: [ 1, 2, 3 ]
```

**Signature**

```ts
declare const mapAccumEffect: { <S, A, B, E2, R2>(initial: LazyArg<S>, f: (s: S, a: A) => Effect.Effect<readonly [state: S, values: ReadonlyArray<B>], E2, R2>, options?: { readonly onHalt?: ((state: S) => ReadonlyArray<B>) | undefined; }): <E, R>(self: Stream<A, E, R>) => Stream<B, E | E2, R | R2>; <A, E, R, S, B, E2, R2>(self: Stream<A, E, R>, initial: LazyArg<S>, f: (s: S, a: A) => Effect.Effect<readonly [state: S, values: ReadonlyArray<B>], E2, R2>, options?: { readonly onHalt?: ((state: S) => ReadonlyArray<B>) | undefined; }): Stream<B, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L7343)

Since v2.0.0