# asyncOption

Imports an asynchronous effect into a pure `Effect` value, possibly returning
the value synchronously.

If the register function returns a value synchronously, then the callback
function `Effect<R, E, A> => void` must not be called. Otherwise the callback
function must be called at most once.

The `FiberId` of the fiber that may complete the async callback may be
provided to allow for better diagnostics.

To import and use `asyncOption` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.asyncOption
```

**Signature**

```ts
export declare const asyncOption: <R, E, A>(
  register: (callback: (_: Effect<R, E, A>) => void) => Option.Option<Effect<R, E, A>>,
  blockingOn?: FiberId.FiberId
) => Effect<R, E, A>
```
