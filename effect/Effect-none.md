# none

Requires the option produced by this value to be `None`.

To import and use `none` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.none
```

**Signature**

```ts
export declare const none: <R, E, A>(
  self: Effect<R, E, Option.Option<A>>
) => Effect<R, Cause.NoSuchElementException | E, void>
```
