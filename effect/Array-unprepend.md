# unprepend

Return a tuple containing the first element, and a new `Array` of the remaining elements, if any.

To import and use `unprepend` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.unprepend
```

**Signature**

```ts
export declare const unprepend: <A>(self: readonly [A, ...A[]]) => [firstElement: A, remainingElements: A[]]
```
