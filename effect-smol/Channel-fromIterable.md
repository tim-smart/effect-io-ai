Package: `effect`<br />
Module: `Channel`<br />

## Channel.fromIterable

Creates a `Channel` that emits all elements from an iterable.

**Example**

```ts
import { Channel } from "effect"

const set = new Set([1, 2, 3])
const channel = Channel.fromIterable(set)
// Emits: 1, 2, 3
```

**Signature**

```ts
declare const fromIterable: <A, L>(iterable: Iterable<A, L>) => Channel<A, never, L>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L744)

Since v2.0.0