# propertySignature

Lifts a `Schema` into a `PropertySignature`.

To import and use `propertySignature` from the "Schema" module:

```ts
import * as Schema from "effect/Schema"
// Can be accessed like this
Schema.propertySignature
```

**Signature**

```ts
export declare const propertySignature: <S extends Schema.All>(self: S) => propertySignature<S>
```
