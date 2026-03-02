Package: `effect`<br />
Module: `Channel`<br />

## Channel.scan

Statefully transforms a channel by scanning over its output with an accumulator function.
Emits the intermediate results of the scan operation.

**Example**

```ts
import { Channel } from "effect"

// Create a channel with numbers
const numbersChannel = Channel.fromIterable([1, 2, 3, 4, 5])

// Scan to create running sum
const runningSumChannel = Channel.scan(numbersChannel, 0, (sum, n) => sum + n)
// Outputs: 0, 1, 3, 6, 10, 15
// Note: emits the initial value and each intermediate result

// Scan with string concatenation
const wordsChannel = Channel.fromIterable(["hello", "world", "from", "effect"])
const sentenceChannel = Channel.scan(
  wordsChannel,
  "",
  (sentence, word) => sentence === "" ? word : `${sentence} ${word}`
)
// Outputs: "", "hello", "hello world", "hello world from", "hello world from effect"
```

**Signature**

```ts
declare const scan: { <S, OutElem>(initial: S, f: (s: S, a: Types.NoInfer<OutElem>) => S): <OutErr, OutDone, InElem, InErr, InDone, Env>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>) => Channel<S, OutErr, OutDone, InElem, InErr, InDone, Env>; <OutElem, OutErr, OutDone, InElem, InErr, InDone, Env, S>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>, initial: S, f: (s: S, a: Types.NoInfer<OutElem>) => S): Channel<S, OutErr, OutDone, InElem, InErr, InDone, Env>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L3469)

Since v2.0.0