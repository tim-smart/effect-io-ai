# repeatUntilEffect

Repeats this effect until its value satisfies the specified effectful
predicate or until the first failure.

Part of the `Effect` module, imported from `@effect/io/Effect`.

**Signature**

```ts
export declare const repeatUntilEffect: {
  <A, R2>(f: (a: A) => Effect<R2, never, boolean>): <R, E>(self: Effect<R, E, A>) => Effect<R2 | R, E, A>
  <R, E, A, R2>(self: Effect<R, E, A>, f: (a: A) => Effect<R2, never, boolean>): Effect<R | R2, E, A>
}
```
