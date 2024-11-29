# orDie

Translates `STM` effect failure into death of the fiber, making all
failures unchecked and not a part of the type of the effect.

To import and use `orDie` from the "STM" module:

ts
import \* as STM from "effect/STM"
// Can be accessed like this
STM.orDie
undefined

**Signature**

```ts
export declare const orDie: <A, E, R>(self: STM<A, E, R>) => STM<A, never, R>
```
