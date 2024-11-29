# pretty

Returns the specified `Cause` as a pretty-printed string.

To import and use `pretty` from the "Cause" module:

ts
import \* as Cause from "effect/Cause"
// Can be accessed like this
Cause.pretty
undefined

**Signature**

```ts
export declare const pretty: <E>(
  cause: Cause<E>,
  options?: { readonly renderErrorCause?: boolean | undefined }
) => string
```
