# pretty

Converts a `Cause` into a human-readable string.

**Details**

This function pretty-prints the entire `Cause`, including any failures,
defects, and interruptions. It can be especially helpful for logging,
debugging, or displaying structured errors to users.

You can optionally pass `options` to configure how the error cause is
rendered. By default, it includes essential details of all errors in the
`Cause`.

To import and use `pretty` from the "Cause" module:

```ts
import * as Cause from "effect/Cause"
// Can be accessed like this
Cause.pretty
```

**Signature**

```ts
export declare const pretty: <E>(
  cause: Cause<E>,
  options?: { readonly renderErrorCause?: boolean | undefined }
) => string
```
