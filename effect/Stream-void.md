Package: `effect`<br />
Module: `Stream`<br />

## Stream.void

A stream that contains a single `void` value.

**Example**

```ts
import { Effect, Stream } from "effect"

const stream = Stream.void

Effect.runPromise(Stream.runCollect(stream)).then(console.log)
// { _id: 'Chunk', values: [ undefined ] }

```

**Signature**

```ts
declare const void: Stream<void, never, never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L5493)

Since v2.0.0