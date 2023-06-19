# asyncEffect

Converts an asynchronous, callback-style API into an `Effect`, which will
be executed asynchronously.

With this variant, the registration function may return a an `Effect`.

Part of the `Effect` module, imported from `@effect/io/Effect`.

**Signature**

```ts
export declare const asyncEffect: <R, E, A, R2, E2, X>(
  register: (callback: (_: Effect<R, E, A>) => void) => Effect<R2, E2, X>
) => Effect<R | R2, E | E2, A>
```
