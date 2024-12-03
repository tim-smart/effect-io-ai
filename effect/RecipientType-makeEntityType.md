# makeEntityType

Given a name and a schema for the protocol, constructs an EntityType.

To import and use `makeEntityType` from the "RecipientType" module:

```ts
import * as RecipientType from "@effect/cluster/RecipientType"
// Can be accessed like this
RecipientType.makeEntityType
```

**Signature**

```ts
export declare function makeEntityType<Msg extends Message.Message.Any, I>(
  name: string,
  schema: Schema.Schema<Msg, I>
): EntityType<Msg>
```
