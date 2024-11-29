# using

Scopes all resources acquired by `resource` to the lifetime of `use`
without effecting the scope of any resources acquired by `use`.

To import and use `using` from the "Effect" module:

ts
import \* as Effect from "effect/Effect"
// Can be accessed like this
Effect.using
undefined

**Signature**

```ts
export declare const using: {
  <A, A2, E2, R2>(
    use: (a: A) => Effect<A2, E2, R2>
  ): <E, R>(self: Effect<A, E, R>) => Effect<A2, E2 | E, R2 | Exclude<R, Scope.Scope>>
  <A, E, R, A2, E2, R2>(
    self: Effect<A, E, R>,
    use: (a: A) => Effect<A2, E2, R2>
  ): Effect<A2, E | E2, R2 | Exclude<R, Scope.Scope>>
}
```
