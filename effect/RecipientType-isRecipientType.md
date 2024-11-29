# isRecipientType

Ensure that given value is a RecipientType

To import and use `isRecipientType` from the "RecipientType" module:

ts
import \* as RecipientType from "@effect/cluster/RecipientType"
// Can be accessed like this
RecipientType.isRecipientType
undefined

**Signature**

```ts
export declare function isRecipientType<A extends Message.Message.Any>(value: unknown): value is RecipientType<A>
```
