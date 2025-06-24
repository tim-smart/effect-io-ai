Package: `effect`<br />
Module: `Stream`<br />

## Stream.succeed

Creates a single-valued pure stream.

**Example**

```ts
import { Effect, Stream } from "effect"

// A Stream with a single number
const stream = Stream.succeed(3)

Effect.runPromise(Stream.runCollect(stream)).then(console.log)
// { _id: 'Chunk', values: [ 3 ] }
```

**Signature**

```ts
declare const succeed: <A>(value: A) => Stream<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L4770)

Since v2.0.0