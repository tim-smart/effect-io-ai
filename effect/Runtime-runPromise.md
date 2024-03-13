# runPromise

Runs the `Effect`, returning a JavaScript `Promise` that will be resolved
with the value of the effect once the effect has been executed, or will be
rejected with the first error or exception throw by the effect.

This method is effectful and should only be used at the edges of your
program.

To import and use `runPromise` from the "Runtime" module:

```ts
import * as Runtime from "effect/Runtime"
// Can be accessed like this
Runtime.runPromise
```

**Signature**

```ts
export declare const runPromise: <R>(
  runtime: Runtime<R>
) => <A, E>(effect: Effect.Effect<A, E, R>, options?: { readonly signal?: AbortSignal } | undefined) => Promise<A>
```
