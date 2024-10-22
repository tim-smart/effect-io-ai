# encodedBoundSchema

The `encodedBoundSchema` function is similar to `encodedSchema` but preserves
the refinements up to the first transformation point in the original schema.

To import and use `encodedBoundSchema` from the "Schema" module:

```ts
import * as Schema from "effect/Schema"
// Can be accessed like this
Schema.encodedBoundSchema
```

**Signature**

```ts
export declare const encodedBoundSchema: <A, I, R>(schema: Schema<A, I, R>) => SchemaClass<I>
```
