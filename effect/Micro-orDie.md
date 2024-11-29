# orDie

Elevate any expected errors of the given `Micro` effect to unexpected errors,
resulting in an error type of `never`.

To import and use `orDie` from the "Micro" module:

ts
import \* as Micro from "effect/Micro"
// Can be accessed like this
Micro.orDie
undefined

**Signature**

```ts
export declare const orDie: <A, E, R>(self: Micro<A, E, R>) => Micro<A, never, R>
```
