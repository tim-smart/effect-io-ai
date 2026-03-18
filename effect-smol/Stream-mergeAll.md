Package: `effect`<br />
Module: `Stream`<br />

## Stream.mergeAll

Merges a collection of streams, running up to the specified number concurrently.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const streams = [
  Stream.fromEffect(Effect.delay(Effect.succeed("A"), "20 millis")),
  Stream.fromEffect(Effect.delay(Effect.succeed("B"), "10 millis"))
]

const program = Effect.gen(function*() {
  const values = yield* Stream.mergeAll(streams, { concurrency: 2 }).pipe(
    Stream.runCollect
  )
  yield* Console.log(values)
})

Effect.runPromise(program)
// Output: [ "B", "A" ]
```

**Signature**

```ts
declare const mergeAll: { (options: { readonly concurrency: number | "unbounded"; readonly bufferSize?: number | undefined; }): <A, E, R>(streams: Iterable<Stream<A, E, R>>) => Stream<A, E, R>; <A, E, R>(streams: Iterable<Stream<A, E, R>>, options: { readonly concurrency: number | "unbounded"; readonly bufferSize?: number | undefined; }): Stream<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L3079)

Since v2.0.0