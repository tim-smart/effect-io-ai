Package: `effect`<br />
Module: `Stream`<br />

## Stream.drain

Converts this stream to a stream that executes its effects but emits no
elements. Useful for sequencing effects using streams:

**Example**

```ts
import { Effect, Stream } from "effect"

// We create a stream and immediately drain it.
const stream = Stream.range(1, 6).pipe(Stream.drain)

// Effect.runPromise(Stream.runCollect(stream)).then(console.log)
// { _id: 'Chunk', values: [] }
```

**Signature**

```ts
declare const drain: <A, E, R>(self: Stream<A, E, R>) => Stream<never, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L1344)

Since v2.0.0