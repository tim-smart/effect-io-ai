# async

Imports an asynchronous side-effect into a pure `Effect` value.
The callback function `Effect<R, E, A> => void` must be called at most once.

If an Effect is returned by the registration function, it will be executed
if the fiber executing the effect is interrupted.

The registration function can also receive an `AbortSignal` if required for
interruption.

The `FiberId` of the fiber that may complete the async callback may be
provided to allow for better diagnostics.

To import and use `async` from the "Effect" module:

```ts
import * as Effect from 'effect/Effect'

// Can be accessed like this
Effect.async
```

**Signature**

```ts
export declare const async: <R, E, A>(
  register: (callback: (_: Effect<R, E, A>) => void, signal: AbortSignal) => void | Effect<R, never, void>,
  blockingOn?: FiberId.FiberId
) => Effect<R, E, A>
```
