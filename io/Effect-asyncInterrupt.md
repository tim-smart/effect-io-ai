# asyncInterrupt

Imports an asynchronous side-effect into a pure `Effect` value.
The callback function `Effect<R, E, A> => void` must be called at most once.

The registration function receives an AbortSignal that can be used to handle
interruption.

The `FiberId` of the fiber that may complete the async callback may be
provided to allow for better diagnostics.

To import and use `asyncInterrupt` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.asyncInterrupt
```

**Signature**

```ts
export declare const asyncInterrupt: <R, E, A>(
  register: (callback: (_: Effect<R, E, A>) => void, signal: AbortSignal) => void,
  blockingOn?: FiberId.FiberId
) => Effect<R, E, A>
```
