# makeRecipientAddress

Given a name and a schema for the protocol, constructs an EntityType.

To import and use `makeRecipientAddress` from the "RecipientAddress" module:

```ts
import * as RecipientAddress from "@effect/cluster/RecipientAddress"
// Can be accessed like this
RecipientAddress.makeRecipientAddress
```

**Signature**

```ts
export declare function makeRecipientAddress(recipientTypeName: string, entityId: string): RecipientAddress
```
