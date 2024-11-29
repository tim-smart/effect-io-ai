# flatten

Flattens any nested `Micro` effects, merging the error and requirement types.

To import and use `flatten` from the "Micro" module:

ts
import \* as Micro from "effect/Micro"
// Can be accessed like this
Micro.flatten
undefined

**Signature**

```ts
export declare const flatten: <A, E, R, E2, R2>(self: Micro<Micro<A, E, R>, E2, R2>) => Micro<A, E | E2, R | R2>
```
