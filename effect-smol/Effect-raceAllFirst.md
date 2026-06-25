Package: `effect`<br />
Module: `Effect`<br />

## Effect.raceAllFirst

Runs multiple effects concurrently and completes with the first effect to
finish, whether it succeeds or fails.

**Details**

After the first effect completes, all remaining effects are interrupted. Use
`raceAll` when early failures should be ignored until a success occurs or
all effects fail.

**Example** (Taking the first settled result)

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L4788)

Since v4.0.0