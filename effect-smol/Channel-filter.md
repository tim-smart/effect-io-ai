Package: `effect`<br />
Module: `Channel`<br />

## Channel.filter

Filters the output elements of a channel using a predicate function.
Elements that don't match the predicate are discarded.

**Example**

```ts
import { Channel } from "effect"

// Create a channel with mixed numbers
const numbersChannel = Channel.fromIterable([1, 2, 3, 4, 5, 6, 7, 8])

// Filter to keep only even numbers
const evenChannel = Channel.filter(numbersChannel, (n) => n % 2 === 0)
// Outputs: 2, 4, 6, 8

// Filter with type refinement
const mixedChannel = Channel.fromIterable([1, "hello", 2, "world", 3])
const numbersOnlyChannel = Channel.filter(
  mixedChannel,
  (value): value is number => typeof value === "number"
)
// Outputs: 1, 2, 3 (all typed as numbers)
```

**Signature**

```ts
declare const filter: { <OutElem, B extends OutElem>(refinement: Predicate.Refinement<OutElem, B>): <OutErr, OutDone, InElem, InErr, InDone, Env>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>) => Channel<B, OutErr, OutDone, InElem, InErr, InDone, Env>; <OutElem>(predicate: Predicate.Predicate<OutElem>): <OutErr, OutDone, InElem, InErr, InDone, Env>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>) => Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>; <OutElem, OutErr, OutDone, InElem, InErr, InDone, Env, B extends OutElem>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>, refinement: Predicate.Refinement<OutElem, B>): Channel<B, OutErr, OutDone, InElem, InErr, InDone, Env>; <OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>, predicate: Predicate.Predicate<OutElem>): Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L3007)

Since v2.0.0