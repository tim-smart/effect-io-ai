# group

Group equal, consecutive elements of a `NonEmptyReadonlyArray` into `NonEmptyArray`s.

To import and use `group` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.group
```

**Signature**

```ts
export declare const group: <A>(self: readonly [A, ...A[]]) => [[A, ...A[]], ...[A, ...A[]][]]
```
