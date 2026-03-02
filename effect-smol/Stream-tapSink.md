Package: `effect`<br />
Module: `Stream`<br />

## Stream.tapSink

Sends all elements emitted by this stream to the specified sink in addition
to emitting them.

**Example**

```ts
import { Console, Effect, Ref, Sink, Stream } from "effect"

const program = Effect.gen(function*() {
  const seen = yield* Ref.make<Array<number>>([])
  const sink = Sink.forEach((value: number) =>
    Ref.update(seen, (items) => [...items, value])
  )
  const result = yield* Stream.make(1, 2, 3).pipe(
    Stream.tapSink(sink),
    Stream.runCollect
  )
  const tapped = yield* Ref.get(seen)
  yield* Console.log(tapped)
  yield* Console.log(result)
})

Effect.runPromise(program)
// Output: [1, 2, 3]
// Output: [1, 2, 3]
```

**Signature**

```ts
declare const tapSink: { <A, E2, R2>(sink: Sink.Sink<unknown, A, unknown, E2, R2>): <E, R>(self: Stream<A, E, R>) => Stream<A, E2 | E, R2 | R>; <A, E, R, E2, R2>(self: Stream<A, E, R>, sink: Sink.Sink<unknown, A, unknown, E2, R2>): Stream<A, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L2160)

Since v2.0.0