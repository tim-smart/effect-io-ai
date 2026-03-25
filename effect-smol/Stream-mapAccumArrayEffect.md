Package: `effect`<br />
Module: `Stream`<br />

## Stream.mapAccumArrayEffect

Statefully and effectfully maps over chunks of this stream to emit new values.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const program = Effect.gen(function*() {
  const totals = yield* Stream.make(1, 2, 3, 4).pipe(
    Stream.rechunk(2),
    Stream.mapAccumArrayEffect(() => 0, (total, chunk) =>
      Effect.gen(function*() {
        const next = chunk.reduce((sum, value) => sum + value, total)
        return [next, [next]] as const
      })
    ),
    Stream.runCollect
  )
  yield* Console.log(totals)
})

Effect.runPromise(program)
// Output: [ 3, 10 ]
```

**Signature**

```ts
declare const mapAccumArrayEffect: { <S, A, B, E2, R2>(initial: LazyArg<S>, f: (s: S, a: Arr.NonEmptyReadonlyArray<A>) => Effect.Effect<readonly [state: S, values: ReadonlyArray<B>], E2, R2>, options?: { readonly onHalt?: ((state: S) => ReadonlyArray<B>) | undefined; }): <E, R>(self: Stream<A, E, R>) => Stream<B, E | E2, R | R2>; <A, E, R, S, B, E2, R2>(self: Stream<A, E, R>, initial: LazyArg<S>, f: (s: S, a: Arr.NonEmptyReadonlyArray<A>) => Effect.Effect<readonly [state: S, values: ReadonlyArray<B>], E2, R2>, options?: { readonly onHalt?: ((state: S) => ReadonlyArray<B>) | undefined; }): Stream<B, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L7123)

Since v2.0.0