# sandbox

Exposes the full `Cause` of failure for the specified effect.

To import and use `sandbox` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.sandbox
```

**Signature**

```ts
export declare const sandbox: <R, E, A>(self: Effect<R, E, A>) => Effect<R, Cause.Cause<E>, A>
```
