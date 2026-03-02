Package: `effect`<br />
Module: `Channel`<br />

## Channel.runForEach

Runs a channel and applies an effect to each output element.

**Example**

```ts
import { Channel, Console, Data } from "effect"

class ForEachError extends Data.TaggedError("ForEachError")<{
  readonly element: unknown
}> {}

// Create a channel with numbers
const numbersChannel = Channel.fromIterable([1, 2, 3])

// Run forEach to log each element
const forEachEffect = Channel.runForEach(
  numbersChannel,
  (n) => Console.log(`Processing: ${n}`)
)

// Logs: "Processing: 1", "Processing: 2", "Processing: 3"
```

**Signature**

```ts
declare const runForEach: { <OutElem, EX, RX>(f: (o: OutElem) => Effect.Effect<void, EX, RX>): <OutErr, OutDone, Env>(self: Channel<OutElem, OutErr, OutDone, unknown, unknown, unknown, Env>) => Effect.Effect<OutDone, OutErr | EX, Env | RX>; <OutElem, OutErr, OutDone, Env, EX, RX>(self: Channel<OutElem, OutErr, OutDone, unknown, unknown, unknown, Env>, f: (o: OutElem) => Effect.Effect<void, EX, RX>): Effect.Effect<OutDone, OutErr | EX, Env | RX>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L7095)

Since v2.0.0