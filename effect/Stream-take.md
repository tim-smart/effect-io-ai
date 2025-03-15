Package: `effect`<br />
Module: `Stream`<br />

## Stream.take

Takes the specified number of elements from this stream.

**Example**

```ts
import { Effect, Stream } from "effect"

const stream = Stream.take(Stream.iterate(0, (n) => n + 1), 5)

Effect.runPromise(Stream.runCollect(stream)).then(console.log)
// { _id: 'Chunk', values: [ 0, 1, 2, 3, 4 ] }
```

**Signature**

```ts
declare const take: { (n: number): <A, E, R>(self: Stream<A, E, R>) => Stream<A, E, R>; <A, E, R>(self: Stream<A, E, R>, n: number): Stream<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L4769)

Since v2.0.0