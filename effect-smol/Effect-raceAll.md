Package: `effect`<br />
Module: `Effect`<br />

## Effect.raceAll

Races multiple effects and returns the first successful result.

**Details**

This function runs multiple effects concurrently and returns the result of
the first one to succeed. If one effect succeeds, the others will be
interrupted.

If none of the effects succeed, the function will fail with the last error
encountered.

**When to Use**

This is useful when you want to race multiple effects, but only care about
the first one to succeed. It is commonly used in cases like timeouts,
retries, or when you want to optimize for the faster response without
worrying about the other effects.

**Example**

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

**See**

- `race` for a version that handles only two effects.

**Signature**

```ts
declare const raceAll: <Eff extends Effect<any, any, any>>(all: Iterable<Eff>, options?: { readonly onWinner?: (options: { readonly fiber: Fiber<any, any>; readonly index: number; readonly parentFiber: Fiber<any, any>; }) => void; }) => Effect<Success<Eff>, Error<Eff>, Services<Eff>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L4639)

Since v2.0.0