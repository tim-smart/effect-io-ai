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
export declare const flip: <A, E, R>(self: Effect<A, E, R>) => Effect<E, A, R>
```
