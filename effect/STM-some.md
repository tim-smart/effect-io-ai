# some

Converts an option on values into an option on errors.

To import and use `some` from the "STM" module:

ts
import \* as STM from "effect/STM"
// Can be accessed like this
STM.some
undefined

**Signature**

```ts
export declare const some: <A, E, R>(self: STM<Option.Option<A>, E, R>) => STM<A, Option.Option<E>, R>
```
