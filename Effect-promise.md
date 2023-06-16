# promise

Like `tryCatchPromise` but produces a defect in case of errors.

Part of the `Effect` module, imported from `@effect/io/Effect`.

### Signature

```typescript
export declare const promise: <A>(evaluate: LazyArg<Promise<A>>) => Effect<never, never, A>
```
