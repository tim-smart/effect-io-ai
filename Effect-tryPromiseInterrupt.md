# tryPromiseInterrupt

Like `tryPromise` but allows for interruption via AbortSignal

Part of the `Effect` module, imported from `@effect/io/Effect`.

**Signature**

```ts
export declare const tryPromiseInterrupt: <A>(
  evaluate: (signal: AbortSignal) => Promise<A>
) => Effect<never, unknown, A>
```
