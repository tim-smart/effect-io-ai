# die

Fails the transactional effect with the specified defect.

To import and use `die` from the "STM" module:

```ts
import * as STM from "effect/STM"
// Can be accessed like this
STM.die
```

**Signature**

```ts
export declare const die: (defect: unknown) => STM<never>
```
