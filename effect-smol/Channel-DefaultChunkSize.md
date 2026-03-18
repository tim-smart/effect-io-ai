Package: `effect`<br />
Module: `Channel`<br />

## Channel.DefaultChunkSize

The default chunk size used by channels for batching operations.

**Example**

```ts
import { Channel } from "effect"

console.log(Channel.DefaultChunkSize) // 4096
```

**Signature**

```ts
declare const DefaultChunkSize: number
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L436)

Since v2.0.0