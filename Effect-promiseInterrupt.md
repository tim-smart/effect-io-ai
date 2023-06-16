# promiseInterrupt

Like `promise` but allows for interruption via AbortSignal

Part of the `Effect` module from the `@effect/io` package.

### Signature

```typescript
export declare const promiseInterrupt: <A>(evaluate: (signal: AbortSignal) => Promise<A>) => Effect<never, never, A>
```
