# negate

Returns a new effect with the boolean value of this effect negated.

To import and use `negate` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.negate
```

**Signature**

```ts
export declare const negate: <E, R>(self: Effect<boolean, E, R>) => Effect<boolean, E, R>
```
