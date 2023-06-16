# tryCatchPromiseInterrupt

Like `tryCatchPromise` but allows for interruption via AbortSignal

Part of the `Effect` module from the `@effect/io` package.

### Signature

```typescript
export declare const tryCatchPromiseInterrupt: <E, A>(
  evaluate: (signal: AbortSignal) => Promise<A>,
  onReject: (reason: unknown) => E
) => Effect<never, E, A>
```
