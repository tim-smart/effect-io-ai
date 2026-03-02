Package: `effect`<br />
Module: `Channel`<br />

## Channel.never

Represents an Channel that never completes

**Example**

```ts
import { Channel } from "effect"

// Create a channel that never completes
const neverChannel = Channel.never

// Use in conditional logic
const withFallback = Channel.concatWith(
  neverChannel,
  () => Channel.succeed("fallback")
)

// Never channel is useful for testing or as a placeholder
const conditionalChannel = (shouldComplete: boolean) =>
  shouldComplete ? Channel.succeed("done") : Channel.never
```

**Signature**

```ts
declare const never: Channel<never, never, never, unknown, unknown, unknown, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L862)

Since v2.0.0