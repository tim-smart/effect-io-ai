# flip

Returns an effect that swaps the error/success cases. This allows you to
use all methods on the error channel, possibly before flipping back.

Part of the `Effect` module, imported from `@effect/io/Effect`.

**Signature**

```ts
export declare const flip: <R, E, A>(self: Effect<R, E, A>) => Effect<R, A, E>
```
