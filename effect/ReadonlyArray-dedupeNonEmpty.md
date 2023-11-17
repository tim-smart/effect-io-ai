# dedupeNonEmpty

Remove duplicates from a `NonEmptyReadonlyArray`, keeping the first occurrence of an element.

To import and use `dedupeNonEmpty` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from "effect/ReadonlyArray"
// Can be accessed like this
ReadonlyArray.dedupeNonEmpty
```

**Signature**

```ts
export declare const dedupeNonEmpty: <A>(self: readonly [A, ...A[]]) => [A, ...A[]]
```
