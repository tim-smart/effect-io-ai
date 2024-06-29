# runPromiseExit

Runs an `Effect` workflow, returning a `Promise` which resolves with the
`Exit` value of the workflow.

To import and use `runPromiseExit` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.runPromiseExit
```

**Signature**

```ts
export declare const runPromiseExit: <A, E>(
  effect: Effect<A, E, never>,
  options?: { readonly signal?: AbortSignal } | undefined
) => Promise<Exit.Exit<A, E>>
```
