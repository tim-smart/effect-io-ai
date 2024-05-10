# propertySignature

Lifts a `Schema` into a `PropertySignature`.

To import and use `propertySignature` from the "Schema" module:

```ts
import * as Schema from "@effect/schema/Schema"
// Can be accessed like this
Schema.propertySignature
```

**Signature**

```ts
export declare const propertySignature: <A, I, R>(
  self: Schema<A, I, R>
) => PropertySignature<":", A, never, ":", I, false, R>
```
