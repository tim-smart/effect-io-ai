# isSuccess

Returns `true` if this effect is a success, `false` otherwise.

To import and use `isSuccess` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.isSuccess
```

**Signature**

```ts
export declare const isSuccess: <A, E, R>(self: Effect<A, E, R>) => Effect<boolean, never, R>
```
