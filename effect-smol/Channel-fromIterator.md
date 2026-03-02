Package: `effect`<br />
Module: `Channel`<br />

## Channel.fromIterator

Creates a `Channel` from an iterator.

**Example**

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L600)

Since v2.0.0