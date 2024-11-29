# fromExit

Converts a `MicroExit` into a `Micro` effect.

To import and use `fromExit` from the "Micro" module:

ts
import \* as Micro from "effect/Micro"
// Can be accessed like this
Micro.fromExit
undefined

**Signature**

```ts
export declare const fromExit: <A, E>(self: MicroExit<A, E>) => Micro<A, E>
```
