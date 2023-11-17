# orDie

Translates effect failure into death of the fiber, making all failures
unchecked and not a part of the type of the effect.

To import and use `orDie` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.orDie
```

**Signature**

```ts
export declare const orDie: <R, E, A>(self: Effect<R, E, A>) => Effect<R, never, A>
```
