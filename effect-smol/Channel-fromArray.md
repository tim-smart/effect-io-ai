Package: `effect`<br />
Module: `Channel`<br />

## Channel.fromArray

Creates a `Channel` that emits all elements from an array.

**Example** (Creating channels from arrays)

```ts
import { Channel } from "effect"

const channel = Channel.fromArray([1, 2, 3, 4, 5])
// Emits: 1, 2, 3, 4, 5
```

**Signature**

```ts
declare const fromArray: <A>(array: ReadonlyArray<A>) => Channel<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L707)

Since v4.0.0