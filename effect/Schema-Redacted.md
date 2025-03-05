# Redacted

A transformation that transform a `Schema<A, I, R>` into a
`RedactedFromSelf<A>`.

To import and use `Redacted` from the "Schema" module:

```ts
import * as Schema from "effect/Schema"
// Can be accessed like this
Schema.Redacted
```

**Signature**

```ts
export declare function Redacted<Value extends Schema.Any>(value: Value): Redacted<Value>
```
