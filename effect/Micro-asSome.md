# asSome

Wrap the success value of this `Micro` effect in an `Option.Some`.

To import and use `asSome` from the "Micro" module:

ts
import \* as Micro from "effect/Micro"
// Can be accessed like this
Micro.asSome
undefined

**Signature**

```ts
export declare const asSome: <A, E, R>(self: Micro<A, E, R>) => Micro<Option.Option<A>, E, R>
```
