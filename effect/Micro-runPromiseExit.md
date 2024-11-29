# runPromiseExit

Execute the `Micro` effect and return a `Promise` that resolves with the
`MicroExit` of the computation.

To import and use `runPromiseExit` from the "Micro" module:

ts
import \* as Micro from "effect/Micro"
// Can be accessed like this
Micro.runPromiseExit
undefined

**Signature**

```ts
export declare const runPromiseExit: <A, E>(
  effect: Micro<A, E>,
  options?: { readonly signal?: AbortSignal | undefined; readonly scheduler?: MicroScheduler | undefined } | undefined
) => Promise<MicroExit<A, E>>
```
