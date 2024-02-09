# asyncEither

Imports an asynchronous side-effect into an effect. It has the option of
returning the value synchronously, which is useful in cases where it cannot
be determined if the effect is synchronous or asynchronous until the register
is actually executed. It also has the option of returning a canceler,
which will be used by the runtime to cancel the asynchronous effect if the fiber
executing the effect is interrupted.

If the register function returns a value synchronously, then the callback
function `Effect<A, E, R> => void` must not be called. Otherwise the callback
function must be called at most once.

The `FiberId` of the fiber that may complete the async callback may be
provided to allow for better diagnostics.

To import and use `asyncEither` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.asyncEither
```

**Signature**

```ts
export declare const asyncEither: <A, E = never, R = never>(
  register: (callback: (effect: Effect<A, E, R>) => void) => Either.Either<Effect<void, never, R>, Effect<A, E, R>>,
  blockingOn?: FiberId.FiberId
) => Effect<A, E, R>
```
