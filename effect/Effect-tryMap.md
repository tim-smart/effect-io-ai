# tryMap

Returns an effect whose success is mapped by the specified side effecting
`try` function, translating any promise rejections into typed failed effects
via the `catch` function.

To import and use `tryMap` from the "Effect" module:

ts
import \* as Effect from "effect/Effect"
// Can be accessed like this
Effect.tryMap
undefined

**Signature**

```ts
export declare const tryMap: {
  <A, B, E1>(options: {
    readonly try: (a: A) => B
    readonly catch: (error: unknown) => E1
  }): <E, R>(self: Effect<A, E, R>) => Effect<B, E1 | E, R>
  <A, E, R, B, E1>(
    self: Effect<A, E, R>,
    options: { readonly try: (a: A) => B; readonly catch: (error: unknown) => E1 }
  ): Effect<B, E | E1, R>
}
```
