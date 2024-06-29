# async

Imports an asynchronous side-effect into a pure `Effect` value. The callback
function `Effect<A, E, R> => void` **MUST** be called at most once.

The registration function can optionally return an Effect, which will be
executed if the `Fiber` executing this Effect is interrupted.

The registration function can also receive an `AbortSignal` if required for
interruption.

The `FiberId` of the fiber that may complete the async callback may also be
specified. This is called the "blocking fiber" because it suspends the fiber
executing the `async` Effect (i.e. semantically blocks the fiber from making
progress). Specifying this fiber id in cases where it is known will improve
diagnostics, but not affect the behavior of the returned effect.

To import and use `async` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.async
```

**Signature**

```ts
export declare const async: <A, E = never, R = never>(
  register: (callback: (_: Effect<A, E, R>) => void, signal: AbortSignal) => void | Effect<void, never, R>,
  blockingOn?: FiberId.FiberId
) => Effect<A, E, R>
```
