# Redacted

A schema that transforms any type `A` into a `Redacted<A>`.

To import and use `Redacted` from the "Schema" module:

ts
import \* as Schema from "effect/Schema"
// Can be accessed like this
Schema.Redacted
undefined

**Signature**

```ts
export declare const Redacted: <Value extends Schema.Any>(value: Value) => Redacted<Value>
```
