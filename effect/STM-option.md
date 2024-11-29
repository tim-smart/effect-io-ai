# option

Converts the failure channel into an `Option`.

To import and use `option` from the "STM" module:

ts
import \* as STM from "effect/STM"
// Can be accessed like this
STM.option
undefined

**Signature**

```ts
export declare const option: <A, E, R>(self: STM<A, E, R>) => STM<Option.Option<A>, never, R>
```
