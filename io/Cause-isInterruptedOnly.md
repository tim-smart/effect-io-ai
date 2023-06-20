# isInterruptedOnly

Returns `true` if the specified cause contains only interruptions (without
any `Die` or `Fail` causes), `false` otherwise.

To import and use `isInterruptedOnly` from the "Cause" module:

```ts
import * as Cause from '@effect/io/Cause'

// Can be accessed like this
Cause.isInterruptedOnly
```

**Signature**

```ts
export declare const isInterruptedOnly: <E>(self: Cause<E>) => boolean
```
