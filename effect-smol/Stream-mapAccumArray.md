Package: `effect`<br />
Module: `Stream`<br />

## Stream.mapAccumArray

Statefully maps over non-empty chunk arrays, emitting zero or more values per chunk.

The mapping function runs once per chunk and the state is threaded across chunks.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const program = Effect.gen(function*() {
  const output = yield* Stream.make(1, 2, 3, 4, 5, 6).pipe(
    Stream.rechunk(2),
    Stream.mapAccumArray(() => 0, (sum: number, chunk) => {
      const next = chunk.reduce((acc, n) => acc + n, sum)
      return [next, [next]]
    }),
    Stream.runCollect
  )
  yield* Console.log(output)
})

Effect.runPromise(program)
// Output: [ 3, 10, 21 ]
```

**Signature**

```ts
declare const mapAccumArray: { <S, A, B>(initial: LazyArg<S>, f: (s: S, a: Arr.NonEmptyReadonlyArray<A>) => readonly [state: S, values: ReadonlyArray<B>], options?: { readonly onHalt?: ((state: S) => ReadonlyArray<B>) | undefined; }): <E, R>(self: Stream<A, E, R>) => Stream<B, E, R>; <A, E, R, S, B>(self: Stream<A, E, R>, initial: LazyArg<S>, f: (s: S, a: Arr.NonEmptyReadonlyArray<A>) => readonly [state: S, values: ReadonlyArray<B>], options?: { readonly onHalt?: ((state: S) => Array<B>) | undefined; }): Stream<B, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L6883)

Since v2.0.0