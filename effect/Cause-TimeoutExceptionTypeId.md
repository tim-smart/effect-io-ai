# TimeoutExceptionTypeId

A unique symbol identifying the `TimeoutException` type.

**Details**

This provides a symbol that identifies a `TimeoutException`. It helps the
framework recognize errors related to operations that fail to complete within
a given timeframe.

To import and use `TimeoutExceptionTypeId` from the "Cause" module:

```ts
import * as Cause from "effect/Cause"
// Can be accessed like this
Cause.TimeoutExceptionTypeId
```

**Signature**

```ts
export declare const TimeoutExceptionTypeId: typeof TimeoutExceptionTypeId
```
