Package: `effect`<br />
Module: `Channel`<br />

## Channel.scanEffect

Statefully transforms a channel by scanning over its output with an effectful accumulator function.
Emits the intermediate results of the scan operation.

**Example**

```ts
import { Channel, Data, Effect } from "effect"

class ScanError extends Data.TaggedError("ScanError")<{
  readonly reason: string
}> {}

// Create a channel with numbers
const numbersChannel = Channel.fromIterable([1, 2, 3, 4])

// Effectful scan with async operations
const asyncScanChannel = Channel.scanEffect(
  numbersChannel,
  "",
  (acc, value) =>
    Effect.gen(function*() {
      // Simulate async work
      yield* Effect.sleep("10 millis")
      return acc + value.toString()
    })
)
// Outputs: "", "1", "12", "123", "1234"

// Scan with error handling
const errorHandlingScan = Channel.scanEffect(
  numbersChannel,
  0,
  (sum, n) => {
    if (n < 0) {
      return Effect.fail(new ScanError({ reason: "negative number" }))
    }
    return Effect.succeed(sum + n)
  }
)
```

**Signature**

```ts
declare const scanEffect: { <S, OutElem, E, R>(initial: S, f: (s: S, a: Types.NoInfer<OutElem>) => Effect.Effect<S, E, R>): <OutErr, OutDone, InElem, InErr, InDone, Env>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>) => Channel<S, OutErr | E, OutDone, InElem, InErr, InDone, Env | R>; <OutElem, OutErr, OutDone, InElem, InErr, InDone, Env, S, E, R>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>, initial: S, f: (s: S, a: Types.NoInfer<OutElem>) => Effect.Effect<S, E, R>): Channel<S, OutErr | E, OutDone, InElem, InErr, InDone, Env | R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L3542)

Since v2.0.0