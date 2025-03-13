Package: `effect`<br />
Module: `Stream`<br />

## Stream.make

Creates a stream from an sequence of values.

**Example**

```ts
import { Effect, Stream } from "effect"

const stream = Stream.make(1, 2, 3)

// Effect.runPromise(Stream.runCollect(stream)).then(console.log)
// { _id: 'Chunk', values: [ 1, 2, 3 ] }
```

**Signature**

```ts
declare const make: <As extends Array<any>>(...as: As) => Stream<As[number]>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L2699)

Since v2.0.0