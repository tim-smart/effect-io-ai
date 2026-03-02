Package: `effect`<br />
Module: `Channel`<br />

## Channel.tap

Applies a side effect function to each output element of the channel,
returning a new channel that emits the same elements.

The `tap` function allows you to perform side effects (like logging or
debugging) on each element emitted by a channel without modifying the
elements themselves.

**Example**

```ts
import { Channel, Console, Data } from "effect"

class LogError extends Data.TaggedError("LogError")<{
  readonly message: string
}> {}

// Create a channel that outputs numbers
const numberChannel = Channel.fromIterable([1, 2, 3])

// Tap into each output element to perform side effects
const tappedChannel = Channel.tap(
  numberChannel,
  (n) => Console.log(`Processing number: ${n}`)
)

// The channel still outputs the same elements but logs each one
// Outputs: 1, 2, 3 (while logging each)
```

**Signature**

```ts
declare const tap: { <OutElem, X, OutErr1, Env1>(f: (d: Types.NoInfer<OutElem>) => Effect.Effect<X, OutErr1, Env1>, options?: { readonly concurrency?: number | "unbounded" | undefined; }): <OutErr, OutDone, InElem, InErr, InDone, Env>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>) => Channel<OutElem, OutErr1 | OutErr, OutDone, InElem, InErr, InDone, Env1 | Env>; <OutElem, OutErr, OutDone, InElem, InErr, InDone, Env, X, OutErr1, Env1>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>, f: (d: Types.NoInfer<OutElem>) => Effect.Effect<X, OutErr1, Env1>, options?: { readonly concurrency?: number | "unbounded" | undefined; }): Channel<OutElem, OutErr | OutErr1, OutDone, InElem, InErr, InDone, Env | Env1>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L2028)

Since v4.0.0