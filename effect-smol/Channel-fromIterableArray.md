Package: `effect`<br />
Module: `Channel`<br />

## Channel.fromIterableArray

Creates a `Channel` that emits arrays of elements from an iterable.

**Example**

```ts
import { Channel } from "effect"

const numbers = [1, 2, 3, 4, 5]
const channel = Channel.fromIterableArray(numbers)
// Emits arrays like: [1, 2, 3, 4], [5] (based on chunk size)
```

**Signature**

```ts
declare const fromIterableArray: <A, L>(iterable: Iterable<A, L>, chunkSize?: number) => Channel<Arr.NonEmptyReadonlyArray<A>, never, L>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L752)

Since v2.0.0