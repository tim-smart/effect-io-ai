# runSyncExit

Attempt to execute the `Micro` effect synchronously and return the `MicroExit`.

If any asynchronous effects are encountered, the function will return a
`CauseDie` containing the `MicroFiber`.

To import and use `runSyncExit` from the "Micro" module:

ts
import \* as Micro from "effect/Micro"
// Can be accessed like this
Micro.runSyncExit
undefined

**Signature**

```ts
export declare const runSyncExit: <A, E>(effect: Micro<A, E>) => MicroExit<A, E>
```
