# mapTryCatch

Returns an effect whose success is mapped by the specified side effecting
`f` function, translating any thrown exceptions into typed failed effects.

To import and use `mapTryCatch` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.mapTryCatch
```

**Signature**

```ts
export declare const mapTryCatch: {
  <A, B, E1>(f: (a: A) => B, onThrow: (u: unknown) => E1): <R, E>(self: Effect<R, E, A>) => Effect<R, E1 | E, B>
  <R, E, A, B, E1>(self: Effect<R, E, A>, f: (a: A) => B, onThrow: (u: unknown) => E1): Effect<R, E | E1, B>
}
```
