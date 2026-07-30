Package: `effect`<br />
Module: `Cause`<br />

## Cause.originalError

Retrieves the original, unproxied error instance from an error object.

**Details**

This function returns the underlying error object without any
library-specific wrapping or proxying that might occur during error handling.
This can be essential if you need direct access to the error's native
properties, such as stack traces or custom data fields, for detailed
debugging or integration with external systems.

**Signature**

```ts
declare const originalError: <E>(obj: E) => E
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Cause.ts#L1555)

Since v2.0.0