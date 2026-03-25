Package: `effect`<br />
Module: `Stream`<br />

## Stream.groupByKey

Groups elements by a key and emits a stream per key.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const program = Effect.gen(function*() {
  const grouped = yield* Stream.make(1, 2, 3, 4, 5).pipe(
    Stream.groupByKey((n) => n % 2 === 0 ? "even" : "odd"),
    Stream.mapEffect(
      ([key, stream]) =>
        Stream.runCollect(stream).pipe(
          Effect.map((values) => [key, values] as const)
        ),
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
declare const groupByKey: { <A, K>(f: (a: NoInfer<A>) => K, options?: { readonly bufferSize?: number | undefined; readonly idleTimeToLive?: Duration.Input | undefined; }): <E, R>(self: Stream<A, E, R>) => Stream<readonly [K, Stream<A>], E, R>; <A, E, R, K>(self: Stream<A, E, R>, f: (a: NoInfer<A>) => K, options?: { readonly bufferSize?: number | undefined; readonly idleTimeToLive?: Duration.Input | undefined; }): Stream<readonly [K, Stream<A>], E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L7761)

Since v2.0.0