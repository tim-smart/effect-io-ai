# schema

This is the schema for a PoisonPill that is used to encode the value over the wire.
This is useful if you want a behavior that can be shut down from an external message.

To import and use `schema` from the "PoisonPill" module:

ts
import \* as PoisonPill from "@effect/cluster/PoisonPill"
// Can be accessed like this
PoisonPill.schema
undefined

**Signature**

```ts
export declare const schema: Schema.Schema<PoisonPill, PoisonPill.Encoded, never>
```
