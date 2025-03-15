Package: `effect`<br />
Module: `Stream`<br />

## Stream.fromIterable

Creates a new `Stream` from an iterable collection of values.

**Example**

```ts
import { Effect, Stream } from "effect"

const numbers = [1, 2, 3]

const stream = Stream.fromIterable(numbers)

Effect.runPromise(Stream.runCollect(stream)).then(console.log)
// { _id: 'Chunk', values: [ 1, 2, 3 ] }
```

**Signature**

```ts
declare const fromIterable: <A>(iterable: Iterable<A>) => Stream<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L2085)

Since v2.0.0