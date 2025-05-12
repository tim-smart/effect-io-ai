Package: `effect`<br />
Module: `Stream`<br />

## Stream.zipWithPrevious

Zips each element with the previous element. Initially accompanied by
`None`.

**Example**

```ts
import { Chunk, Effect, Stream } from "effect"

const stream = Stream.zipWithPrevious(Stream.make(1, 2, 3, 4))

Effect.runPromise(Stream.runCollect(stream)).then((chunk) => console.log(Chunk.toArray(chunk)))
// [
//   [ { _id: 'Option', _tag: 'None' }, 1 ],
//   [ { _id: 'Option', _tag: 'Some', value: 1 }, 2 ],
//   [ { _id: 'Option', _tag: 'Some', value: 2 }, 3 ],
//   [ { _id: 'Option', _tag: 'Some', value: 3 }, 4 ]
// ]
```

**Signature**

```ts
declare const zipWithPrevious: <A, E, R>(self: Stream<A, E, R>) => Stream<[Option.Option<A>, A], E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L6108)

Since v2.0.0