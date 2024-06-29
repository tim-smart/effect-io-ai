# option

Executes this effect, skipping the error but returning optionally the
success.

To import and use `option` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.option
```

**Signature**

```ts
export declare const option: <A, E, R>(self: Effect<A, E, R>) => Effect<Option.Option<A>, never, R>
```
