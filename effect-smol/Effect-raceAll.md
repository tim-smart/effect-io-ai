Package: `effect`<br />
Module: `Effect`<br />

## Effect.raceAll

Runs multiple effects concurrently and returns the first successful result.

**Details**

Early failures do not finish the race; `raceAll` keeps waiting until one
effect succeeds or every effect has failed. When one effect succeeds, the
remaining effects are interrupted. If every effect fails, the returned effect
fails with a cause containing the collected failure reasons.

**When to Use**

Use `raceAll` when early failures should be ignored until a success occurs
or all effects fail.

**See**

- `race` for a version that handles only two effects.

**Example** (Racing many effects)

```ts
import { Duration, Effect } from "effect"

// Multiple effects with different delays
const effect1 = Effect.delay(Effect.succeed("Fast"), Duration.millis(100))
const effect2 = Effect.delay(Effect.succeed("Slow"), Duration.millis(500))
const effect3 = Effect.delay(Effect.succeed("Very Slow"), Duration.millis(1000))

// Race all effects - the first to succeed wins
const raced = Effect.raceAll([effect1, effect2, effect3])

// Result: "Fast" (after ~100ms)
```

**Signature**

```ts
declare const raceAll: <Eff extends Effect<any, any, any>>(all: Iterable<Eff>, options?: { readonly onWinner?: (options: { readonly fiber: Fiber<any, any>; readonly index: number; readonly parentFiber: Fiber<any, any>; }) => void; }) => Effect<Success<Eff>, Error<Eff>, Services<Eff>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L4375)

Since v2.0.0