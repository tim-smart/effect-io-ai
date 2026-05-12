Package: `effect`<br />
Module: `Effect`<br />

## Effect.raceAllFirst

Races multiple effects and returns the first successful result.

**Details**

Similar to `raceAll`, this function runs multiple effects concurrently
and returns the result of the first one to succeed. If one effect succeeds,
the others will be interrupted.

**Example**

```ts
import { Duration, Effect } from "effect"

// Multiple effects with different delays and potential failures
const effect1 = Effect.delay(Effect.succeed("First"), Duration.millis(200))
const effect2 = Effect.delay(Effect.fail("Second failed"), Duration.millis(100))
const effect3 = Effect.delay(Effect.succeed("Third"), Duration.millis(300))

// Race all effects - the first to succeed wins
const raced = Effect.raceAllFirst([effect1, effect2, effect3])

// Result: "First" (after ~200ms, even though effect2 completes first but fails)
```

**Signature**

```ts
declare const raceAllFirst: <Eff extends Effect<any, any, any>>(all: Iterable<Eff>, options?: { readonly onWinner?: (options: { readonly fiber: Fiber<any, any>; readonly index: number; readonly parentFiber: Fiber<any, any>; }) => void; }) => Effect<Success<Eff>, Error<Eff>, Services<Eff>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L4636)

Since v4.0.0