Package: `effect`<br />
Module: `Channel`<br />

## Channel.concatWith

Concatenates this channel with another channel created from the terminal value
of this channel. The new channel is created using the provided function.

**Example**

```ts
import { Channel, Data } from "effect"

class ConcatError extends Data.TaggedError("ConcatError")<{
  readonly reason: string
}> {}

// Create a channel that outputs numbers and terminates with sum
const numberChannel = Channel.fromIterable([1, 2, 3]).pipe(
  Channel.concatWith((sum: void) => Channel.succeed(`Completed processing`))
)

// Concatenates additional channel based on completion value
// Outputs: 1, 2, 3, then "Completed processing"
```

**Signature**

```ts
declare const concatWith: { <OutDone, OutElem1, OutErr1, OutDone1, InElem1, InErr1, InDone1, Env1>(f: (leftover: Types.NoInfer<OutDone>) => Channel<OutElem1, OutErr1, OutDone1, InElem1, InErr1, InDone1, Env1>): <OutElem, OutErr, InElem, InErr, InDone, Env>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>) => Channel<OutElem | OutElem1, OutErr1 | OutErr, OutDone1, InElem & InElem1, InErr & InErr1, InDone & InDone1, Env1 | Env>; <OutElem, OutErr, OutDone, InElem, InErr, InDone, Env, OutElem1, OutErr1, OutDone1, InElem1, InErr1, InDone1, Env1>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>, f: (leftover: Types.NoInfer<OutDone>) => Channel<OutElem1, OutErr1, OutDone1, InElem1, InErr1, InDone1, Env1>): Channel<OutElem | OutElem1, OutErr1 | OutErr, OutDone1, InElem & InElem1, InErr & InErr1, InDone & InDone1, Env1 | Env>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L2288)

Since v2.0.0