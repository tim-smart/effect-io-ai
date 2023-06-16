# promise

Like `tryCatchPromise` but produces a defect in case of errors.

Part of the `Effect` module from the `@effect/io` package.

### Signature

```typescript
export declare const promise: <A>(evaluate: LazyArg<Promise<A>>) => Effect<never, never, A>
```
