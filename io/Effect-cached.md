# cached

Returns an effect that, if evaluated, will return the lazily computed
result of this effect.

To import and use `cached` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.cached
```

**Signature**

```ts
export declare const cached: <R, E, A>(self: Effect<R, E, A>) => Effect<never, never, Effect<R, E, A>>
```
