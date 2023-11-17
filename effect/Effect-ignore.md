# ignore

Returns a new effect that ignores the success or failure of this effect.

To import and use `ignore` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.ignore
```

**Signature**

```ts
export declare const ignore: <R, E, A>(self: Effect<R, E, A>) => Effect<R, never, void>
```
