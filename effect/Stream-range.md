## range

Constructs a stream from a range of integers, including both endpoints.

**Example**

```ts
import { Effect, Stream } from "effect"

// A Stream with a range of numbers from 1 to 5
const stream = Stream.range(1, 5)

// Effect.runPromise(Stream.runCollect(stream)).then(console.log)
// { _id: 'Chunk', values: [ 1, 2, 3, 4, 5 ] }
```

**Signature**

```ts
declare const range: (min: number, max: number, chunkSize?: number) => Stream<number>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L3812)

Since v2.0.0