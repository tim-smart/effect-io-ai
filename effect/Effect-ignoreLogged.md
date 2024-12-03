# ignoreLogged

Returns a new effect that ignores the success or failure of this effect,
but which also logs failures at the Debug level, just in case the failure
turns out to be important.

To import and use `ignoreLogged` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.ignoreLogged
```

**Signature**

```ts
export declare const ignoreLogged: <A, E, R>(self: Effect<A, E, R>) => Effect<void, never, R>
```
