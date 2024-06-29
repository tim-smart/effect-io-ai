# isUnknownException

Returns `true` if the specified value is an `UnknownException`, `false`
otherwise.

To import and use `isUnknownException` from the "Cause" module:

```ts
import * as Cause from "effect/Cause"
// Can be accessed like this
Cause.isUnknownException
```

**Signature**

```ts
export declare const isUnknownException: (u: unknown) => u is UnknownException
```
