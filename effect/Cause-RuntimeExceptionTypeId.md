# RuntimeExceptionTypeId

A unique symbol identifying the `RuntimeException` type.

**Details**

This provides a symbol that identifies a `RuntimeException`. This is
typically used internally by the library to recognize checked exceptions that
occur during runtime.

To import and use `RuntimeExceptionTypeId` from the "Cause" module:

```ts
import * as Cause from "effect/Cause"
// Can be accessed like this
Cause.RuntimeExceptionTypeId
```

**Signature**

```ts
export declare const RuntimeExceptionTypeId: typeof RuntimeExceptionTypeId
```
