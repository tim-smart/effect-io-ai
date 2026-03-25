Package: `effect`<br />
Module: `Stream`<br />

## Stream.orElseSucceed

Returns a stream that emits a fallback value when this stream fails.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const program = Effect.gen(function*() {
  const stream = Stream.fail("NetworkError").pipe(
    Stream.orElseSucceed((error) => `Recovered: ${error}`)
  )

  const values = yield* Stream.runCollect(stream)
  yield* Console.log(values)
})

Effect.runPromise(program)
// Output: [ "Recovered: NetworkError" ]
```

**Signature**

```ts
declare const orElseSucceed: { <E, A2>(f: (error: E) => A2): <A, R>(self: Stream<A, E, R>) => Stream<A | A2, never, R>; <A, E, R, A2>(self: Stream<A, E, R>, f: (error: E) => A2): Stream<A | A2, never, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L5540)

Since v2.0.0