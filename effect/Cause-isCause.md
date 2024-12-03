# isCause

Returns `true` if the specified value is a `Cause`, `false` otherwise.

To import and use `isCause` from the "Cause" module:

```ts
import * as Cause from "effect/Cause"
// Can be accessed like this
Cause.isCause
```

**Signature**

```ts
export declare const isCause: (u: unknown) => u is Cause<never>
```
