# runPromise

Execute the `Micro` effect and return a `Promise` that resolves with the
successful value of the computation.

To import and use `runPromise` from the "Micro" module:

```ts
import * as Micro from "effect/Micro"
// Can be accessed like this
Micro.runPromise
```

**Signature**

```ts
export declare const runPromise: <A, E>(
  effect: Micro<A, E, never>,
  options?: { readonly signal?: AbortSignal | undefined } | undefined
) => Promise<A>
```
