# originalError

Retrieves the original, unproxied error instance from an error object.

**Details**

This function returns the underlying error object without any
library-specific wrapping or proxying that might occur during error handling.
This can be essential if you need direct access to the error's native
properties, such as stack traces or custom data fields, for detailed
debugging or integration with external systems.

To import and use `originalError` from the "Cause" module:

```ts
import * as Cause from "effect/Cause"
// Can be accessed like this
Cause.originalError
```

**Signature**

```ts
export declare const originalError: <E>(obj: E) => E
```
