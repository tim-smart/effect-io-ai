Package: `effect`<br />
Module: `Stream`<br />

## Stream.takeRight

Takes the last specified number of elements from this stream.

**Example**

```ts
import { Effect, Stream } from "effect"

const stream = Stream.takeRight(Stream.make(1, 2, 3, 4, 5, 6), 3)

Effect.runPromise(Stream.runCollect(stream)).then(console.log)
// { _id: 'Chunk', values: [ 4, 5, 6 ] }
```

**Signature**

```ts
declare const takeRight: { (n: number): <A, E, R>(self: Stream<A, E, R>) => Stream<A, E, R>; <A, E, R>(self: Stream<A, E, R>, n: number): Stream<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L4790)

Since v2.0.0