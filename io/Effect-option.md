# option

Executes this effect, skipping the error but returning optionally the
success.

To import and use `option` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.option
```

**Signature**

```ts
export declare const option: <R, E, A>(self: Effect<R, E, A>) => Effect<R, never, Option.Option<A>>
```
