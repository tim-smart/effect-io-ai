Package: `effect`<br />
Module: `Channel`<br />

## Channel.runFold

Runs a channel and folds over all output elements with an accumulator.

**Example**

```ts
import { Channel, Data } from "effect"

class FoldError extends Data.TaggedError("FoldError")<{
  readonly operation: string
}> {}

// Create a channel with numbers
const numbersChannel = Channel.fromIterable([1, 2, 3, 4, 5])

// Fold to calculate sum
const sumEffect = Channel.runFold(numbersChannel, () => 0, (acc, n) => acc + n)

// Effect.runSync(sumEffect) // Returns: 15
```

**Signature**

```ts
declare const runFold: { <Z, OutElem>(initial: LazyArg<Z>, f: (acc: Z, o: OutElem) => Z): <OutErr, OutDone, Env>(self: Channel<OutElem, OutErr, OutDone, unknown, unknown, unknown, Env>) => Effect.Effect<Z, OutErr, Env>; <OutElem, OutErr, OutDone, Env, Z>(self: Channel<OutElem, OutErr, OutDone, unknown, unknown, unknown, Env>, initial: LazyArg<Z>, f: (acc: Z, o: OutElem) => Z): Effect.Effect<Z, OutErr, Env>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L7302)

Since v2.0.0