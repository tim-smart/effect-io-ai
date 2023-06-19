# tryCatchPromiseInterrupt

Like `tryCatchPromise` but allows for interruption via AbortSignal

Part of the `Effect` module, imported from `@effect/io/Effect`.

**Signature**

```ts
export declare const tryCatchPromiseInterrupt: <E, A>(
  evaluate: (signal: AbortSignal) => Promise<A>,
  onReject: (reason: unknown) => E
) => Effect<never, E, A>
```
