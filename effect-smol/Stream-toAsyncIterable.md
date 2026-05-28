Package: `effect`<br />
Module: `Stream`<br />

## Stream.toAsyncIterable

Converts a stream to an `AsyncIterable` for `for await...of` consumption.

**Example** (Converting to an async iterable)

```ts
import { Stream } from "effect"

const stream = Stream.make(1, 2, 3)

const collect = async () => {
  const iterable = Stream.toAsyncIterable(stream)
  const values: Array<number> = []
  for await (const value of iterable) {
    values.push(value)
  }
  console.log(values)
}

collect()
// [ 1, 2, 3 ]
```

**Signature**

```ts
declare const toAsyncIterable: <A, E>(self: Stream<A, E>) => AsyncIterable<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L11390)

Since v3.15.0