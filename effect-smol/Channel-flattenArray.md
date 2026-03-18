Package: `effect`<br />
Module: `Channel`<br />

## Channel.flattenArray

Flattens a channel that outputs arrays into a channel that outputs individual elements.

**Example**

```ts
import { Channel, Data } from "effect"

class FlattenError extends Data.TaggedError("FlattenError")<{
  readonly message: string
}> {}

// Create a channel that outputs arrays
const arrayChannel = Channel.fromIterable([
  [1, 2, 3],
  [4, 5],
  [6, 7, 8, 9]
])

// Flatten the arrays into individual elements
const flattenedChannel = Channel.flattenArray(arrayChannel)

// Outputs: 1, 2, 3, 4, 5, 6, 7, 8, 9
```

**Signature**

```ts
declare const flattenArray: <OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>(self: Channel<ReadonlyArray<OutElem>, OutErr, OutDone, InElem, InErr, InDone, Env>) => Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L2775)

Since v4.0.0