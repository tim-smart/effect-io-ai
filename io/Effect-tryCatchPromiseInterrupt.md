# tryCatchPromiseInterrupt

Like `tryCatchPromise` but allows for interruption via AbortSignal

To import and use `tryCatchPromiseInterrupt` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.tryCatchPromiseInterrupt
```

**Signature**

```ts
export declare const tryCatchPromiseInterrupt: <E, A>(
  evaluate: (signal: AbortSignal) => Promise<A>,
  onReject: (reason: unknown) => E
) => Effect<never, E, A>
```
