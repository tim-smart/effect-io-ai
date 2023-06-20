# succeedNone

Returns an effect which succeeds with `None`.

To import and use `succeedNone` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.succeedNone
```

**Signature**

```ts
export declare const succeedNone: (_: void) => Effect<never, never, Option.Option<never>>
```
