# tryMapPromise

Returns an effect whose success is mapped by the specified side effecting
`try` function, translating any promise rejections into typed failed effects
via the `catch` function.

An optional `AbortSignal` can be provided to allow for interruption of the
wrapped `Promise` API.

To import and use `tryMapPromise` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.tryMapPromise
```

**Signature**

```ts
export declare const tryMapPromise: {
  <A, B, E1>(options: {
    readonly try: (a: A, signal: AbortSignal) => PromiseLike<B>
    readonly catch: (error: unknown) => E1
  }): <E, R>(self: Effect<A, E, R>) => Effect<B, E1 | E, R>
  <A, E, R, B, E1>(
    self: Effect<A, E, R>,
    options: { readonly try: (a: A, signal: AbortSignal) => PromiseLike<B>; readonly catch: (error: unknown) => E1 }
  ): Effect<B, E | E1, R>
}
```
