# asSome

Maps the success value of this effect to an optional value.

To import and use `asSome` from the "STM" module:

ts
import \* as STM from "effect/STM"
// Can be accessed like this
STM.asSome
undefined

**Signature**

```ts
export declare const asSome: <A, E, R>(self: STM<A, E, R>) => STM<Option.Option<A>, E, R>
```
