# flip

Returns an `Either` that swaps the error/success cases. This allows you to
use all methods on the error channel, possibly before flipping back.

To import and use `flip` from the "Either" module:

```ts
import * as Either from "effect/Either"
// Can be accessed like this
Either.flip
```

**Signature**

```ts
export declare const flip: <E, A>(self: Either<E, A>) => Either<A, E>
```
