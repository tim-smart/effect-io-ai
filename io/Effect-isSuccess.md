# isSuccess

Returns `true` if this effect is a success, `false` otherwise.

To import and use `isSuccess` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.isSuccess
```

**Signature**

```ts
export declare const isSuccess: <R, E, A>(self: Effect<R, E, A>) => Effect<R, never, boolean>
```
