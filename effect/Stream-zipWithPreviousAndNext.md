# zipWithPreviousAndNext

Zips each element with both the previous and next element.

To import and use `zipWithPreviousAndNext` from the "Stream" module:

ts
import \* as Stream from "effect/Stream"
// Can be accessed like this
Stream.zipWithPreviousAndNext
undefined

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
export declare const zipWithPreviousAndNext: <A, E, R>(
  self: Stream<A, E, R>
) => Stream<[Option.Option<A>, A, Option.Option<A>], E, R>
```
