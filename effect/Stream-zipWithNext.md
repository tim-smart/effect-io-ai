Package: `effect`<br />
Module: `Stream`<br />

## Stream.zipWithNext

Zips each element with the next element if present.

**Example**

```ts
import { Chunk, Effect, Stream } from "effect"

const stream = Stream.zipWithNext(Stream.make(1, 2, 3, 4))

Effect.runPromise(Stream.runCollect(stream)).then((chunk) => console.log(Chunk.toArray(chunk)))
// [
//   [ 1, { _id: 'Option', _tag: 'Some', value: 2 } ],
//   [ 2, { _id: 'Option', _tag: 'Some', value: 3 } ],
//   [ 3, { _id: 'Option', _tag: 'Some', value: 4 } ],
//   [ 4, { _id: 'Option', _tag: 'None' } ]
// ]
```

**Signature**

```ts
declare const zipWithNext: <A, E, R>(self: Stream<A, E, R>) => Stream<[A, Option.Option<A>], E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L6107)

Since v2.0.0