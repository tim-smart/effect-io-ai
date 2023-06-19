# asUnit

This function maps the success value of an `Effect` value to `void`. If the
original `Effect` value succeeds, the returned `Effect` value will also
succeed. If the original `Effect` value fails, the returned `Effect` value
will fail with the same error.

Part of the `Effect` module, imported from `@effect/io/Effect`.

**Signature**

```ts
export declare const asUnit: <R, E, A>(self: Effect<R, E, A>) => Effect<R, E, void>
```
