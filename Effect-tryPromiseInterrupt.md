# tryPromiseInterrupt

Like `tryPromise` but allows for interruption via AbortSignal

Part of the `Effect` module from the `@effect/io` package. Also known as `Effect.tryPromiseInterrupt`.

### Signature

```typescript
export declare const tryPromiseInterrupt: <A>(
  evaluate: (signal: AbortSignal) => Promise<A>
) => Effect<never, unknown, A>
```
