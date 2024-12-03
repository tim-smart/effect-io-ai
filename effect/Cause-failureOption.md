# failureOption

Returns the `E` associated with the first `Fail` in this `Cause`, if one
exists.

To import and use `failureOption` from the "Cause" module:

```ts
import * as Cause from "effect/Cause"
// Can be accessed like this
Cause.failureOption
```

**Signature**

```ts
export declare const failureOption: <E>(self: Cause<E>) => Option.Option<E>
```
