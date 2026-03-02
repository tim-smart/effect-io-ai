Package: `effect`<br />
Module: `Channel`<br />

## Channel.filterArray

Filters arrays of elements emitted by a channel, applying the filter
to each element within the arrays and only emitting non-empty filtered arrays.

**Example**

```ts
import { Array, Channel } from "effect"

const nonEmptyArrayPredicate = Array.isReadonlyArrayNonEmpty

// Create a channel that outputs arrays of mixed data
const arrayChannel = Channel.fromIterable([
  Array.make(1, 2, 3, 4, 5),
  Array.make(6, 7, 8, 9, 10),
  Array.make(11, 12, 13, 14, 15)
]).pipe(Channel.filter(nonEmptyArrayPredicate))

// Filter arrays to keep only even numbers
const evenArraysChannel = Channel.filterArray(arrayChannel, (n) => n % 2 === 0)
// Outputs: [2, 4], [6, 8, 10], [12, 14]
// Note: Only non-empty filtered arrays are emitted

// Arrays that would become empty after filtering are discarded entirely
const oddChannel = Channel.fromIterable([
  Array.make(1, 3, 5),
  Array.make(2, 4),
  Array.make(7, 9)
]).pipe(Channel.filter(nonEmptyArrayPredicate))
const filteredOddChannel = Channel.filterArray(oddChannel, (n) => n % 2 === 0)
// Outputs: [2, 4] (the arrays [1,3,5] and [7,9] are discarded)
```

**Signature**

```ts
declare const filterArray: { <OutElem, B extends OutElem>(refinement: Predicate.Refinement<OutElem, B>): <OutErr, OutDone, InElem, InErr, InDone, Env>(self: Channel<Arr.NonEmptyReadonlyArray<OutElem>, OutErr, OutDone, InElem, InErr, InDone, Env>) => Channel<Arr.NonEmptyReadonlyArray<B>, OutErr, OutDone, InElem, InErr, InDone, Env>; <OutElem>(predicate: Predicate.Predicate<Types.NoInfer<OutElem>>): <OutErr, OutDone, InElem, InErr, InDone, Env>(self: Channel<Arr.NonEmptyReadonlyArray<OutElem>, OutErr, OutDone, InElem, InErr, InDone, Env>) => Channel<Arr.NonEmptyReadonlyArray<OutElem>, OutErr, OutDone, InElem, InErr, InDone, Env>; <OutElem, OutErr, OutDone, InElem, InErr, InDone, Env, B extends OutElem>(self: Channel<Arr.NonEmptyReadonlyArray<OutElem>, OutErr, OutDone, InElem, InErr, InDone, Env>, refinement: Predicate.Refinement<OutElem, B>): Channel<Arr.NonEmptyReadonlyArray<B>, OutErr, OutDone, InElem, InErr, InDone, Env>; <OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>(self: Channel<Arr.NonEmptyReadonlyArray<OutElem>, OutErr, OutDone, InElem, InErr, InDone, Env>, predicate: Predicate.Predicate<Types.NoInfer<OutElem>>): Channel<Arr.NonEmptyReadonlyArray<OutElem>, OutErr, OutDone, InElem, InErr, InDone, Env>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L3166)

Since v4.0.0