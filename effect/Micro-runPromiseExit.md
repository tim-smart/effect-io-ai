# runPromiseExit

Execute the `Micro` effect and return a `Promise` that resolves with the
`MicroExit` of the computation.

To import and use `runPromiseExit` from the "Micro" module:

```ts
import * as Micro from "effect/Micro"
// Can be accessed like this
Micro.runPromiseExit
```

**Signature**

```ts
export declare const runPromiseExit: <A, E>(
  effect: Micro<A, E, never>,
  options?: { readonly signal?: AbortSignal | undefined } | undefined
) => Promise<MicroExit<A, E>>
```
