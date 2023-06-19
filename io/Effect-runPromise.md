# runPromise

Runs an `Effect` workflow, returning a `Promise` which resolves with the
result of the workflow or rejects with an error.

Part of the `Effect` module, imported from `@effect/io/Effect`.

**Signature**

```ts
export declare const runPromise: <E, A>(effect: Effect<never, E, A>) => Promise<A>
```
