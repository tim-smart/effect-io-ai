Package: `effect`<br />
Module: `Channel`<br />

## Channel.empty

Represents an Channel that emits no elements

**Example**

```ts
import { Channel } from "effect"

// Create an empty channel
const emptyChannel = Channel.empty

// Use empty channel in composition
const combined = Channel.concatWith(emptyChannel, () => Channel.succeed(42))
// Will immediately provide the second channel's output

// Empty channel can be used as a no-op in conditional logic
const conditionalChannel = (shouldEmit: boolean) =>
  shouldEmit ? Channel.succeed("data") : Channel.empty
```

**Signature**

```ts
declare const empty: Channel<never, never, void, unknown, unknown, unknown, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L836)

Since v2.0.0