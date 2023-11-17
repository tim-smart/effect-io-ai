# flip

Returns an effect that swaps the error/success cases. This allows you to
use all methods on the error channel, possibly before flipping back.

To import and use `flip` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.flip
```

**Signature**

```ts
export declare const flip: <R, E, A>(self: Effect<R, E, A>) => Effect<R, A, E>
```
