# encodedSchema

The `encodedSchema` function allows you to extract the `Encoded` portion of a
schema, creating a new schema that conforms to the properties defined in the
original schema without retaining any refinements or transformations that
were applied previously.

To import and use `encodedSchema` from the "Schema" module:

ts
import \* as Schema from "effect/Schema"
// Can be accessed like this
Schema.encodedSchema
undefined

**Signature**

```ts
export declare const encodedSchema: <A, I, R>(schema: Schema<A, I, R>) => SchemaClass<I>
```
