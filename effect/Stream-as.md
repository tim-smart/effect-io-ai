Package: `effect`<br />
Module: `Stream`<br />

## Stream.as

Maps the success values of this stream to the specified constant value.

**Example**

```ts
import { Effect, Stream } from "effect"

const stream = Stream.range(1, 5).pipe(Stream.as(null))

Effect.runPromise(Stream.runCollect(stream)).then(console.log)
// { _id: 'Chunk', values: [ null, null, null, null, null ] }
```

**Signature**

```ts
declare const as: { <B>(value: B): <A, E, R>(self: Stream<A, E, R>) => Stream<B, E, R>; <A, E, R, B>(self: Stream<A, E, R>, value: B): Stream<B, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L311)

Since v2.0.0