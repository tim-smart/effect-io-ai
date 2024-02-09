# negate

Returns a new effect where boolean value of this effect is negated.

To import and use `negate` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.negate
```

**Signature**

```ts
export declare const negate: <R, E>(self: Effect<boolean, E, R>) => Effect<boolean, E, R>
```
