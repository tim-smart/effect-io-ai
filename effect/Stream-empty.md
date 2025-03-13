Package: `effect`<br />
Module: `Stream`<br />

## Stream.empty

The empty stream.

**Example**

```ts
import { Effect, Stream } from "effect"

const stream = Stream.empty

// Effect.runPromise(Stream.runCollect(stream)).then(console.log)
// { _id: 'Chunk', values: [] }
```

**Signature**

```ts
declare const empty: Stream<never, never, never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L1469)

Since v2.0.0