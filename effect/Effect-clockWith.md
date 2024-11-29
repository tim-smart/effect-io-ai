# clockWith

Retreives the `Clock` service from the context and provides it to the
specified effectful function.

To import and use `clockWith` from the "Effect" module:

ts
import \* as Effect from "effect/Effect"
// Can be accessed like this
Effect.clockWith
undefined

**Signature**

```ts
export declare const clockWith: <A, E, R>(f: (clock: Clock.Clock) => Effect<A, E, R>) => Effect<A, E, R>
```
