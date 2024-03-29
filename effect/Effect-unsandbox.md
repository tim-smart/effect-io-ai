# unsandbox

The inverse operation `sandbox(effect)`

Terminates with exceptions on the `Left` side of the `Either` error, if it
exists. Otherwise extracts the contained `Effect<A, E, R>`

To import and use `unsandbox` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.unsandbox
```

**Signature**

```ts
export declare const unsandbox: <A, E, R>(self: Effect<A, Cause.Cause<E>, R>) => Effect<A, E, R>
```
