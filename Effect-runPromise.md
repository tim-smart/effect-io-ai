# runPromise

Runs an `Effect` workflow, returning a `Promise` which resolves with the
result of the workflow or rejects with an error.

Part of the `Effect` module from the `@effect/io` package. Also known as `Effect.runPromise`.

### Signature

```typescript
export declare const runPromise: <E, A>(effect: Effect<never, E, A>) => Promise<A>
```
