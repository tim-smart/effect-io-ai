# flatten

Flattens out a nested `STM` effect.

To import and use `flatten` from the "STM" module:

ts
import \* as STM from "effect/STM"
// Can be accessed like this
STM.flatten
undefined

**Signature**

```ts
export declare const flatten: <A, E2, R2, E, R>(self: STM<STM<A, E2, R2>, E, R>) => STM<A, E2 | E, R2 | R>
```
