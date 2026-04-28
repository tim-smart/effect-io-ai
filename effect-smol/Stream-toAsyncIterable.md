Package: `effect`<br />
Module: `Stream`<br />

## Stream.toAsyncIterable

Converts a stream to an `AsyncIterable` for `for await...of` consumption.

**Example**

```ts
import { Effect, Stream } from "effect"

const stream = Stream.make(1, 2, 3)

const program = Effect.gen(function* () {
  const iterable = Stream.toAsyncIterable(stream)
  const results = yield* Effect.promise(async () => {
    const values: Array<number> = []
    for await (const value of iterable) {
      values.push(value)
    }
    return values
  })
  return results
})
```

**Signature**

```ts
declare const toAsyncIterable: <A, E>(self: Stream<A, E>) => AsyncIterable<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L10650)

Since v2.0.0