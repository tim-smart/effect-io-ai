Package: `effect`<br />
Module: `Stream`<br />

## Stream.transduce

Applies a sink transducer to the stream and emits each sink result.

**Example**

```ts
import { Console, Effect, Sink, Stream } from "effect"

const program = Effect.gen(function* () {
  const result = yield* Stream.make(1, 2, 3, 4).pipe(
    Stream.transduce(Sink.take(2)),
    Stream.runCollect
  )

  yield* Console.log(result)
  // Output: [ [ 1, 2 ], [ 3, 4 ] ]
})
```

**Signature**

```ts
declare const transduce: (<A2, A, E2, R2>(sink: Sink.Sink<A2, A, A, E2, R2>) => <E, R>(self: Stream<A, E, R>) => Stream<A2, E2 | E, R2 | R>) & (<A, E, R, A2, E2, R2>(self: Stream<A, E, R>, sink: Sink.Sink<A2, A, A, E2, R2>) => Stream<A2, E2 | E, R2 | R>)
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L7846)

Since v2.0.0