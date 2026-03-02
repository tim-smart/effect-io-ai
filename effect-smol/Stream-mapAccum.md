Package: `effect`<br />
Module: `Stream`<br />

## Stream.mapAccum

Statefully maps elements, emitting zero or more outputs per input.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const program = Effect.gen(function*() {
  const totals = yield* Stream.make(0, 1, 2, 3, 4, 5, 6).pipe(
    Stream.mapAccum(() => 0, (total, n) => {
      const next = total + n
      return [next, [next]] as const
    }),
    Stream.runCollect
  )

  yield* Console.log(totals)
})

Effect.runPromise(program)
// Output: [ 0, 1, 3, 6, 10, 15, 21 ]
```

**Signature**

```ts
declare const mapAccum: { <S, A, B>(initial: LazyArg<S>, f: (s: S, a: A) => readonly [state: S, values: ReadonlyArray<B>], options?: { readonly onHalt?: ((state: S) => ReadonlyArray<B>) | undefined; }): <E, R>(self: Stream<A, E, R>) => Stream<B, E, R>; <A, E, R, S, B>(self: Stream<A, E, R>, initial: LazyArg<S>, f: (s: S, a: A) => readonly [state: S, values: ReadonlyArray<B>], options?: { readonly onHalt?: ((state: S) => ReadonlyArray<B>) | undefined; }): Stream<B, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L6818)

Since v2.0.0