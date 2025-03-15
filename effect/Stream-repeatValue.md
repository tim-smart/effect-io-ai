Package: `effect`<br />
Module: `Stream`<br />

## Stream.repeatValue

Repeats the provided value infinitely.

**Example**

```ts
import { Effect, Stream } from "effect"

const stream = Stream.repeatValue(0)

Effect.runPromise(Stream.runCollect(stream.pipe(Stream.take(5)))).then(console.log)
// { _id: 'Chunk', values: [ 0, 0, 0, 0, 0 ] }
```

**Signature**

```ts
declare const repeatValue: <A>(value: A) => Stream<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L4030)

Since v2.0.0