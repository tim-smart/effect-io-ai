# using

Scopes all resources acquired by `resource` to the lifetime of `use`
without effecting the scope of any resources acquired by `use`.

To import and use `using` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.using
```

**Signature**

```ts
export declare const using: {
  <A, R2, E2, A2>(use: (a: A) => Effect<R2, E2, A2>): <R, E>(
    self: Effect<Scope.Scope | R, E, A>
  ) => Effect<R2 | R, E2 | E, A2>
  <R, E, A, R2, E2, A2>(self: Effect<Scope.Scope | R, E, A>, use: (a: A) => Effect<R2, E2, A2>): Effect<
    R | R2,
    E | E2,
    A2
  >
}
```
