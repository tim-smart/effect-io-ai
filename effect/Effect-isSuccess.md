# isSuccess

Checks if an effect has succeeded.

**Details**

This function evaluates whether an effect has resulted in a success. It
returns a boolean value wrapped in an effect, with `true` indicating the
effect succeeded and `false` otherwise.

The resulting effect cannot fail (`never` in the error channel) but retains
the context of the original effect.

To import and use `isSuccess` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.isSuccess
```

**Signature**

```ts
export declare const isSuccess: <A, E, R>(self: Effect<A, E, R>) => Effect<boolean, never, R>
```
