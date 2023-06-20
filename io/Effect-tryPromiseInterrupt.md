# tryPromiseInterrupt

Like `tryPromise` but allows for interruption via AbortSignal

To import and use `tryPromiseInterrupt` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.tryPromiseInterrupt
```

**Signature**

```ts
export declare const tryPromiseInterrupt: <A>(
  evaluate: (signal: AbortSignal) => Promise<A>
) => Effect<never, unknown, A>
```
