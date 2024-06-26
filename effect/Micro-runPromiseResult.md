# runPromiseResult

Execute the `Micro` effect and return a `Promise` that resolves with the
`Result` of the computation.

To import and use `runPromiseResult` from the "Micro" module:

```ts
import * as Micro from "effect/Micro"
// Can be accessed like this
Micro.runPromiseResult
```

**Signature**

```ts
export declare const runPromiseResult: <A, E>(
  effect: Micro<A, E, never>,
  options?: { readonly signal?: AbortSignal | undefined } | undefined
) => Promise<Result<A, E>>
```
