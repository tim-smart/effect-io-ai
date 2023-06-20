# promiseInterrupt

Like `promise` but allows for interruption via AbortSignal

To import and use `promiseInterrupt` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.promiseInterrupt
```

**Signature**

```ts
export declare const promiseInterrupt: <A>(evaluate: (signal: AbortSignal) => Promise<A>) => Effect<never, never, A>
```
