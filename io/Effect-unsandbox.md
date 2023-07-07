# unsandbox

The inverse operation `sandbox(effect)`

Terminates with exceptions on the `Left` side of the `Either` error, if it
exists. Otherwise extracts the contained `Effect<R, E, A>`

To import and use `unsandbox` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.unsandbox
```

**Signature**

```ts
export declare const unsandbox: <R, E, A>(self: Effect<R, Cause.Cause<E>, A>) => Effect<R, E, A>
```
