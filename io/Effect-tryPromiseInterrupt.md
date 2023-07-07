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
export declare const tryPromiseInterrupt: {
  <A, E>(options: { readonly try: (signal: AbortSignal) => Promise<A>; readonly catch: (error: unknown) => E }): Effect<
    never,
    E,
    A
  >
  <A>(try_: (signal: AbortSignal) => Promise<A>): Effect<never, unknown, A>
}
```
