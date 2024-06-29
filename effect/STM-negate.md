# negate

Returns a new effect where boolean value of this effect is negated.

To import and use `negate` from the "STM" module:

```ts
import * as STM from "effect/STM"
// Can be accessed like this
STM.negate
```

**Signature**

```ts
export declare const negate: <E, R>(self: STM<boolean, E, R>) => STM<boolean, E, R>
```
