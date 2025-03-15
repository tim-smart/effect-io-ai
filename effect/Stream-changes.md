Package: `effect`<br />
Module: `Stream`<br />

## Stream.changes

Returns a new stream that only emits elements that are not equal to the
previous element emitted, using natural equality to determine whether two
elements are equal.

**Example**

```ts
import { Effect, Stream } from "effect"

const stream = Stream.make(1, 1, 1, 2, 2, 3, 4).pipe(Stream.changes)

Effect.runPromise(Stream.runCollect(stream)).then(console.log)
// { _id: 'Chunk', values: [ 1, 2, 3, 4 ] }
```

**Signature**

```ts
declare const changes: <A, E, R>(self: Stream<A, E, R>) => Stream<A, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L920)

Since v2.0.0