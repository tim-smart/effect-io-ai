Package: `effect`<br />
Module: `Stream`<br />

## Stream.mergeAll

Merges a collection of streams, running up to the specified number concurrently.

**When to use**

Use to merge an iterable of already-created streams while bounding how many
inner streams may run at the same time.

**Details**

The `concurrency` option is required and may be a number or `"unbounded"`.
`bufferSize` controls buffering between inner streams, and outputs are
emitted as they arrive under concurrent merging.

**Example** (Merging streams with bounded concurrency)

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

**See**

- `merge` for merging exactly two streams and choosing a halt strategy
- `flatten` for flattening a stream that already emits streams

**Signature**

```ts
declare const mergeAll: { (options: { readonly concurrency: number | "unbounded"; readonly bufferSize?: number | undefined; }): <A, E, R>(streams: Iterable<Stream<A, E, R>>) => Stream<A, E, R>; <A, E, R>(streams: Iterable<Stream<A, E, R>>, options: { readonly concurrency: number | "unbounded"; readonly bufferSize?: number | undefined; }): Stream<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L3387)

Since v2.0.0