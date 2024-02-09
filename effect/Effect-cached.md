# cached

Returns an effect that, if evaluated, will return the lazily computed
result of this effect.

To import and use `cached` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.cached
```

**Signature**

```ts
export declare const cached: <A, E, R>(self: Effect<A, E, R>) => Effect<Effect<A, E, R>, never, never>
```
