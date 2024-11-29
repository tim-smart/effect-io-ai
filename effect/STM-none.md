# none

Requires the option produced by this value to be `None`.

To import and use `none` from the "STM" module:

ts
import \* as STM from "effect/STM"
// Can be accessed like this
STM.none
undefined

**Signature**

```ts
export declare const none: <A, E, R>(self: STM<Option.Option<A>, E, R>) => STM<void, Option.Option<E>, R>
```
