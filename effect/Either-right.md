# right

Constructs a new `Either` holding a `Right` value. This usually represents a successful value due to the right bias
of this structure.

To import and use `right` from the "Either" module:

```ts
import * as Either from "effect/Either"
// Can be accessed like this
Either.right
```

**Signature**

```ts
export declare const right: <R>(right: R) => Either<R>
```
