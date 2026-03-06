Package: `effect`<br />
Module: `Effect`<br />

## Effect.callback

Creates an `Effect` from a callback-based asynchronous function.

**Details**

The `resume` function:
- Must be called exactly once. Any additional calls will be ignored.
- Can return an optional `Effect` that will be run if the `Fiber` executing
  this `Effect` is interrupted. This can be useful in scenarios where you
  need to handle resource cleanup if the operation is interrupted.
- Can receive an `AbortSignal` to handle interruption if needed.

The `FiberId` of the fiber that may complete the async callback may also be
specified using the `blockingOn` argument. This is called the "blocking
fiber" because it suspends the fiber executing the `async` effect (i.e.
semantically blocks the fiber from making progress). Specifying this fiber id
in cases where it is known will improve diagnostics, but not affect the
behavior of the returned effect.

**When to Use**

Use `Effect.async` when dealing with APIs that use callback-style instead of
`async/await` or `Promise`.

**Example**

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L1415)

Since v2.0.0