Package: `effect`<br />
Module: `Stream`<br />

## Stream.groupBy

Groups elements into keyed substreams using an effectful classifier.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const program = Effect.gen(function*() {
  const grouped = yield* Stream.make(1, 2, 3, 4, 5).pipe(
    Stream.groupBy((n) =>
      Effect.succeed([n % 2 === 0 ? "even" : "odd", n] as const)
    ),
    Stream.mapEffect(
      Effect.fnUntraced(function*([key, stream]) {
        return [key, yield* Stream.runCollect(stream)] as const
      }),
      { concurrency: "unbounded" }
    ),
    Stream.runCollect
  )

  yield* Console.log(grouped)
})

Effect.runPromise(program)
// Output: [ [ "odd", [ 1, 3, 5 ] ], [ "even", [ 2, 4 ] ] ]
```

**Signature**

```ts
declare const groupBy: { <A, K, V, E2, R2>(f: (a: NoInfer<A>) => Effect.Effect<readonly [K, V], E2, R2>, options?: { readonly bufferSize?: number | undefined; readonly idleTimeToLive?: Duration.Input | undefined; }): <E, R>(self: Stream<A, E, R>) => Stream<readonly [K, Stream<V>], E | E2, R | R2>; <A, E, R, K, V, E2, R2>(self: Stream<A, E, R>, f: (a: NoInfer<A>) => Effect.Effect<readonly [K, V], E2, R2>, options?: { readonly bufferSize?: number | undefined; readonly idleTimeToLive?: Duration.Input | undefined; }): Stream<readonly [K, Stream<V>], E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L7597)

Since v2.0.0