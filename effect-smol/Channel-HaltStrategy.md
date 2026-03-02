Package: `effect`<br />
Module: `Channel`<br />

## Channel.HaltStrategy

Represents strategies for halting merged channels when one completes or fails.

**Example**

```ts
import type { Channel } from "effect"

// Different halt strategies for channel merging
const leftFirst: Channel.HaltStrategy = "left" // Stop when left channel halts
const rightFirst: Channel.HaltStrategy = "right" // Stop when right channel halts
const both: Channel.HaltStrategy = "both" // Stop when both channels halt
const either: Channel.HaltStrategy = "either" // Stop when either channel halts
```

**Signature**

```ts
type HaltStrategy = "left" | "right" | "both" | "either"
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L5695)

Since v2.0.0