Package: `effect`<br />
Module: `Effect`<br />

## Effect.callback

Creates an `Effect` from a callback-based asynchronous API.

**When to use**

Use when you need to integrate APIs that complete through callbacks instead
of returning a `Promise`.

**Details**

The registration function receives a `resume` callback and, when requested,
an `AbortSignal`. Call `resume` at most once with the effect that should
complete the fiber; later calls are ignored. Return an optional cleanup
effect from the registration function to run if the fiber is interrupted.

**Example** (Integrating callback APIs)

```ts
import { Effect } from "effect"

const delay = (ms: number) =>
  Effect.callback<void>((resume) => {
    const timeoutId = setTimeout(() => {
      resume(Effect.void)
    }, ms)
    // Cleanup function for interruption
    return Effect.sync(() => clearTimeout(timeoutId))
  })

const program = delay(1000)
```

**Signature**

```ts
declare const callback: <A, E = never, R = never>(register: (this: Scheduler, resume: (effect: Effect<A, E, R>) => void, signal: AbortSignal) => void | Effect<void, never, R>) => Effect<A, E, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L1200)

Since v4.0.0