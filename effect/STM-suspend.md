# suspend

Suspends creation of the specified transaction lazily.

To import and use `suspend` from the "STM" module:

ts
import \* as STM from "effect/STM"
// Can be accessed like this
STM.suspend
undefined

**Signature**

```ts
export declare const suspend: <A, E, R>(evaluate: LazyArg<STM<A, E, R>>) => STM<A, E, R>
```
