# tryMapPromiseInterrupt

Like `tryMapPromise` but allows for interruption via AbortSignal

To import and use `tryMapPromiseInterrupt` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.tryMapPromiseInterrupt
```

**Signature**

```ts
export declare const tryMapPromiseInterrupt: {
  <A, B, E1>(options: {
    readonly try: (a: A, signal: AbortSignal) => Promise<B>
    readonly catch: (error: unknown) => E1
  }): <R, E>(self: Effect<R, E, A>) => Effect<R, E1 | E, B>
  <R, E, A, B, E1>(
    self: Effect<R, E, A>,
    options: { readonly try: (a: A, signal: AbortSignal) => Promise<B>; readonly catch: (error: unknown) => E1 }
  ): Effect<R, E | E1, B>
}
```
