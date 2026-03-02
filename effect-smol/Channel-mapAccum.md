Package: `effect`<br />
Module: `Channel`<br />

## Channel.mapAccum

Statefully maps over a channel with an accumulator, where each element can produce multiple output values.

**Example**

```ts
import { Channel, Effect } from "effect"

// Create a channel with numbers
const numbersChannel = Channel.fromIterable([1, 2, 3, 4])

// Use mapAccum to create running sums and emit both current and sum
const runningSum = Channel.mapAccum(
  numbersChannel,
  () => 0, // initial accumulator state
  (sum, current) => {
    const newSum = sum + current
    // Return [newState, outputValues]
    return [newSum, [current, newSum]] as const
  }
)
// Outputs: 1, 1, 2, 3, 3, 6, 4, 10

// Using with Effect for async processing
const asyncMapAccum = Channel.mapAccum(
  numbersChannel,
  () => "",
  (acc, value) =>
    Effect.gen(function*() {
      const newAcc = acc + value.toString()
      return [newAcc, [`${value}-processed`, newAcc]] as const
    })
)
```

**Signature**

```ts
declare const mapAccum: { <S, OutElem, B, E = never, R = never>(initial: LazyArg<S>, f: (s: S, a: Types.NoInfer<OutElem>) => Effect.Effect<readonly [state: S, values: ReadonlyArray<B>], E, R> | readonly [state: S, values: ReadonlyArray<B>], options?: { readonly onHalt?: ((state: S) => Array<B>) | undefined; }): <OutErr, OutDone, InElem, InErr, InDone, Env>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>) => Channel<B, OutErr | E, OutDone, InElem, InErr, InDone, Env | R>; <OutElem, OutErr, OutDone, InElem, InErr, InDone, Env, S, B, E = never, R = never>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>, initial: LazyArg<S>, f: (s: S, a: Types.NoInfer<OutElem>) => Effect.Effect<readonly [state: S, values: ReadonlyArray<B>], E, R> | readonly [state: S, values: ReadonlyArray<B>], options?: { readonly onHalt?: ((state: S) => Array<B>) | undefined; }): Channel<B, OutErr | E, OutDone, InElem, InErr, InDone, Env | R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L3337)

Since v2.0.0