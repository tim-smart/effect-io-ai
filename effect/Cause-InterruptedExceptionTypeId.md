# InterruptedExceptionTypeId

A unique symbol identifying the `InterruptedException` type.

**Details**

This provides a symbol that identifies an `InterruptedException`. This is
typically used internally to recognize when a fiber has been interrupted,
helping the framework handle interruption logic correctly.

To import and use `InterruptedExceptionTypeId` from the "Cause" module:

```ts
import * as Cause from "effect/Cause"
// Can be accessed like this
Cause.InterruptedExceptionTypeId
```

**Signature**

```ts
export declare const InterruptedExceptionTypeId: typeof InterruptedExceptionTypeId
```
