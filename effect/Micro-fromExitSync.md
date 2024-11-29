# fromExitSync

Converts a lazy `MicroExit` into a `Micro` effect.

To import and use `fromExitSync` from the "Micro" module:

ts
import \* as Micro from "effect/Micro"
// Can be accessed like this
Micro.fromExitSync
undefined

**Signature**

```ts
export declare const fromExitSync: <A, E>(self: LazyArg<MicroExit<A, E>>) => Micro<A, E>
```
