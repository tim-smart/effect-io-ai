Package: `effect`<br />
Module: `Stream`<br />

## Stream.flatten

Flattens a stream of streams into a single stream.

With the default sequential concurrency, inner streams are concatenated in
strict order. When `concurrency` is greater than `1` or `"unbounded"`,
multiple inner streams may run at the same time and their outputs are merged
as they arrive.

**Example** (Flattening nested streams)

```ts
import { Console, Effect, Stream } from "effect"

const streamOfStreams = Stream.make(
  Stream.make(1, 2),
  Stream.make(3, 4),
  Stream.make(5, 6)
)

const program = Effect.gen(function*() {
  const values = yield* Stream.runCollect(Stream.flatten(streamOfStreams))
  yield* Console.log(values)
})

Effect.runPromise(program)
// Output: [ 1, 2, 3, 4, 5, 6 ]
```

**Signature**

```ts
declare const flatten: <Arg extends Stream<Stream<any, any, any>, any, any> | { readonly concurrency?: number | "unbounded" | undefined; readonly bufferSize?: number | undefined; } | undefined = { readonly concurrency?: number | "unbounded" | undefined; readonly bufferSize?: number | undefined; }>(selfOrOptions?: Arg, options?: { readonly concurrency?: number | "unbounded" | undefined; readonly bufferSize?: number | undefined; } | undefined) => [Arg] extends [Stream<Stream<infer _A, infer _E, infer _R>, infer _E2, infer _R2>] ? Stream<_A, _E | _E2, _R | _R2> : <A, E, R, E2, R2>(self: Stream<Stream<A, E, R>, E2, R2>) => Stream<A, E | E2, R | R2>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L2500)

Since v2.0.0