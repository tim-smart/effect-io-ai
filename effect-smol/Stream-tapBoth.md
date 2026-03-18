Package: `effect`<br />
Module: `Stream`<br />

## Stream.tapBoth

Returns a stream that effectfully "peeks" at elements and failures.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const program = Effect.gen(function*() {
  const stream = Stream.make(1, 2).pipe(
    Stream.concat(Stream.fail("boom")),
    Stream.tapBoth({
      onElement: (value) => Console.log(`seen: ${value}`),
      onError: (error) => Console.log(`error: ${error}`)
    }),
    Stream.catch(() => Stream.make(3))
  )
  const result = yield* Stream.runCollect(stream)
  yield* Console.log(result)
})

Effect.runPromise(program)
// Output:
// seen: 1
// seen: 2
// error: boom
// [ 1, 2, 3 ]
```

**Signature**

```ts
declare const tapBoth: { <A, E, X, E2, R2, Y, E3, R3>(options: { readonly onElement: (a: NoInfer<A>) => Effect.Effect<X, E2, R2>; readonly onError: (a: NoInfer<E>) => Effect.Effect<Y, E3, R3>; readonly concurrency?: number | "unbounded" | undefined; }): <R>(self: Stream<A, E, R>) => Stream<A, E | E2 | E3, R | R2 | R3>; <A, E, R, X, E2, R2, Y, E3, R3>(self: Stream<A, E, R>, options: { readonly onElement: (a: NoInfer<A>) => Effect.Effect<X, E2, R2>; readonly onError: (a: NoInfer<E>) => Effect.Effect<Y, E3, R3>; readonly concurrency?: number | "unbounded" | undefined; }): Stream<A, E | E2 | E3, R | R2 | R3>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L2124)

Since v2.0.0