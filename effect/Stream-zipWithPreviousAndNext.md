Package: `effect`<br />
Module: `Stream`<br />

## Stream.zipWithPreviousAndNext

Zips each element with both the previous and next element.

**Example**

```ts
import { Chunk, Effect, Stream } from "effect"

const stream = Stream.zipWithPreviousAndNext(Stream.make(1, 2, 3, 4))

// Effect.runPromise(Stream.runCollect(stream)).then((chunk) => console.log(Chunk.toArray(chunk)))
// [
//   [
//     { _id: 'Option', _tag: 'None' },
//     1,
//     { _id: 'Option', _tag: 'Some', value: 2 }
//   ],
//   [
//     { _id: 'Option', _tag: 'Some', value: 1 },
//     2,
//     { _id: 'Option', _tag: 'Some', value: 3 }
//   ],
//   [
//     { _id: 'Option', _tag: 'Some', value: 2 },
//     3,
//     { _id: 'Option', _tag: 'Some', value: 4 }
//   ],
//   [
//     { _id: 'Option', _tag: 'Some', value: 3 },
//     4,
//     { _id: 'Option', _tag: 'None' }
//   ]
// ]
```

**Signature**

```ts
declare const zipWithPreviousAndNext: <A, E, R>(self: Stream<A, E, R>) => Stream<[Option.Option<A>, A, Option.Option<A>], E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L6120)

Since v2.0.0