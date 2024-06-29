# sandbox

Exposes the full `Cause` of failure for the specified effect.

To import and use `sandbox` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.sandbox
```

**Signature**

```ts
export declare const sandbox: <A, E, R>(self: Effect<A, E, R>) => Effect<A, Cause.Cause<E>, R>
```
