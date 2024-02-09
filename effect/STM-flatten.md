# flatten

Flattens out a nested `STM` effect.

To import and use `flatten` from the "STM" module:

```ts
import * as STM from "effect/STM"
// Can be accessed like this
STM.flatten
```

**Signature**

```ts
export declare const flatten: <R, E, R2, E2, A>(self: STM<STM<A, E2, R2>, E, R>) => STM<A, E | E2, R | R2>
```
