# repeatWhileEffect

Repeats this effect while its value satisfies the specified effectful
predicate or until the first failure.

Part of the `Effect` module, imported from `@effect/io/Effect`.

**Signature**

```ts
export declare const repeatWhileEffect: {
  <R1, A>(f: (a: A) => Effect<R1, never, boolean>): <R, E>(self: Effect<R, E, A>) => Effect<R1 | R, E, A>
  <R, E, R1, A>(self: Effect<R, E, A>, f: (a: A) => Effect<R1, never, boolean>): Effect<R | R1, E, A>
}
```
