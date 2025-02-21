# fnUntraced

Same as {@link fn}, but allows you to create a function that is not traced, for when performance is critical.

To import and use `fnUntraced` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.fnUntraced
```

**Signature**

```ts
export declare const fnUntraced: fn.Gen
```
