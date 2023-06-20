# asyncInterrupt

Imports an asynchronous side-effect into an effect allowing control of interruption.

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
  register: (callback: (effect: Effect<R, E, A>) => void) => Effect<R, never, void>,
  blockingOn?: FiberId.FiberId
) => Effect<R, E, A>
```
