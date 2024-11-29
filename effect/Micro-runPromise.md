# runPromise

Execute the `Micro` effect and return a `Promise` that resolves with the
successful value of the computation.

To import and use `runPromise` from the "Micro" module:

ts
import \* as Micro from "effect/Micro"
// Can be accessed like this
Micro.runPromise
undefined

**Signature**

```ts
export declare const runPromise: <A, E>(
  effect: Micro<A, E>,
  options?: { readonly signal?: AbortSignal | undefined; readonly scheduler?: MicroScheduler | undefined } | undefined
) => Promise<A>
```
