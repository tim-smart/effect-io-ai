# none

Requires the option produced by this value to be `None`.

To import and use `none` from the "Effect" module:

ts
import \* as Effect from "effect/Effect"
// Can be accessed like this
Effect.none
undefined

**Signature**

```ts
export declare const none: <A, E, R>(
  self: Effect<Option.Option<A>, E, R>
) => Effect<void, E | Cause.NoSuchElementException, R>
```
