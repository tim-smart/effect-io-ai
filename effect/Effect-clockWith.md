# clockWith

Retreives the `Clock` service from the context and provides it to the
specified effectful function.

To import and use `clockWith` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.clockWith
```

**Signature**

```ts
export declare const clockWith: <R, E, A>(f: (clock: Clock.Clock) => Effect<R, E, A>) => Effect<R, E, A>
```
