# Sensitive

A field that represents a sensitive value that should not be exposed in the
JSON variants.

To import and use `Sensitive` from the "Model" module:

```ts
import * as Model from "@effect/sql/Model"
// Can be accessed like this
Model.Sensitive
```

**Signature**

```ts
export declare const Sensitive: <S extends Schema.Schema.All | Schema.PropertySignature.All>(schema: S) => Sensitive<S>
```
