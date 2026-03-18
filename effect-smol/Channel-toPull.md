Package: `effect`<br />
Module: `Channel`<br />

## Channel.toPull

Converts a channel to a Pull data structure for low-level consumption.

**Example**

```ts
import { Channel, Data, Effect } from "effect"

class PullError extends Data.TaggedError("PullError")<{
  readonly step: string
}> {}

// Create a channel
const numbersChannel = Channel.fromIterable([1, 2, 3])

// Convert to Pull within a scope
const pullEffect = Effect.scoped(
  Channel.toPull(numbersChannel)
)

// Use the Pull to manually consume elements
```

**Signature**

```ts
declare const toPull: <OutElem, OutErr, OutDone, Env>(self: Channel<OutElem, OutErr, OutDone, unknown, unknown, unknown, Env>) => Effect.Effect<Pull.Pull<OutElem, OutErr, OutDone>, never, Env | Scope.Scope>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L7357)

Since v2.0.0