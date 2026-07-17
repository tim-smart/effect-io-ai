Package: `effect`<br />
Module: `Channel`<br />

## Channel.fromIterator

Creates a `Channel` from an iterator.

**Example** (Creating channels from iterators)

```ts
import { Channel } from "effect"

const numbers = [1, 2, 3, 4, 5]
const channel = Channel.fromIterator(() => numbers[Symbol.iterator]())
// Emits: 1, 2, 3, 4, 5
```

**Signature**

```ts
declare const fromIterator: <A, L>(iterator: LazyArg<Iterator<A, L>>) => Channel<A, never, L>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Channel.ts#L639)

Since v4.0.0