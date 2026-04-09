Package: `effect`<br />
Module: `Stream`<br />

## Stream.toReadableStreamEffect

Creates an Effect that builds a ReadableStream from the stream.

See https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const stream = Stream.make(1, 2, 3, 4, 5)

const effect = Effect.gen(function*() {
  const readableStream = yield* Stream.toReadableStreamEffect(stream)
  yield* Console.log(readableStream instanceof ReadableStream) // true
})

Effect.runPromise(effect)
```

**Signature**

```ts
declare const toReadableStreamEffect: { <A>(options?: { readonly strategy?: QueuingStrategy<A> | undefined; }): <E, R>(self: Stream<A, E, R>) => Effect.Effect<ReadableStream<A>, never, R>; <A, E, R>(self: Stream<A, E, R>, options?: { readonly strategy?: QueuingStrategy<A> | undefined; }): Effect.Effect<ReadableStream<A>, never, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L10490)

Since v2.0.0