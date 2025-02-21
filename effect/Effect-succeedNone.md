# succeedNone

Returns an effect which succeeds with `None`.

**When to Use**

Use this function when you need to represent the absence of a value in your
code, especially when working with optional data. This can be helpful when
you want to indicate that no result is available without throwing an error or
performing additional logic.

To import and use `succeedNone` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.succeedNone
```

**Signature**

```ts
export declare const succeedNone: Effect<Option.Option<never>, never, never>
```
