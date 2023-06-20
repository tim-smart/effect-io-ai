# once

Returns an effect that will be executed at most once, even if it is
evaluated multiple times.

To import and use `once` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.once
```

**Signature**

```ts
export declare const once: <R, E, A>(self: Effect<R, E, A>) => Effect<never, never, Effect<R, E, void>>
```
