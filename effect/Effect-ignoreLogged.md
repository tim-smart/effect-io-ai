# ignoreLogged

Returns a new effect that ignores the success or failure of this effect,
but which also logs failures at the Debug level, just in case the failure
turns out to be important.

To import and use `ignoreLogged` from the "Effect" module:

```ts
import * as Effect from 'effect/Effect'

// Can be accessed like this
Effect.ignoreLogged
```

**Signature**

```ts
export declare const ignoreLogged: <R, E, A>(self: Effect<R, E, A>) => Effect<R, never, void>
```
