# zipWithPrevious

Zips each element with the previous element. Initially accompanied by
`None`.

To import and use `zipWithPrevious` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.zipWithPrevious
```

**Example**

```ts
import { Chunk, Effect, Stream } from "effect"

const stream = Stream.zipWithPrevious(Stream.make(1, 2, 3, 4))

// Effect.runPromise(Stream.runCollect(stream)).then((chunk) => console.log(Chunk.toArray(chunk)))
// [
//   [ { _id: 'Option', _tag: 'None' }, 1 ],
//   [ { _id: 'Option', _tag: 'Some', value: 1 }, 2 ],
//   [ { _id: 'Option', _tag: 'Some', value: 2 }, 3 ],
//   [ { _id: 'Option', _tag: 'Some', value: 3 }, 4 ]
// ]
```

**Signature**

```ts
export declare const zipWithPrevious: <A, E, R>(self: Stream<A, E, R>) => Stream<[Option.Option<A>, A], E, R>
```
