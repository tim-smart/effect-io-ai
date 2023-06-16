# promiseInterrupt

Like `promise` but allows for interruption via AbortSignal

Part of the `Effect` module, imported from `@effect/io/Effect`.

**Signature**

```ts
export declare const promiseInterrupt: <A>(evaluate: (signal: AbortSignal) => Promise<A>) => Effect<never, never, A>
```
