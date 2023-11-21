# unprepend

Return a tuple containing the first element, and a new `Array` of the remaining elements, if any.

To import and use `unprepend` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from "effect/ReadonlyArray"
// Can be accessed like this
ReadonlyArray.unprepend
```

**Signature**

```ts
export declare const unprepend: <A>(self: readonly [A, ...A[]]) => [firstElement: A, remainingElements: A[]]
```
