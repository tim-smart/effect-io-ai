# tryMapPromise

Returns an effect whose success is mapped by the specified side effecting
`f` function, translating any promise rejections into typed failed effects.

To import and use `tryMapPromise` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.tryMapPromise
```

**Signature**

```ts
export declare const tryMapPromise: {
  <A, B, E1>(options: { readonly try: (a: A) => Promise<B>; readonly catch: (error: unknown) => E1 }): <R, E>(
    self: Effect<R, E, A>
  ) => Effect<R, E1 | E, B>
  <R, E, A, B, E1>(
    self: Effect<R, E, A>,
    options: { readonly try: (a: A) => Promise<B>; readonly catch: (error: unknown) => E1 }
  ): Effect<R, E | E1, B>
}
```
