# typeSchema

The `typeSchema` function allows you to extract the `Type` portion of a
schema, creating a new schema that conforms to the properties defined in the
original schema without considering the initial encoding or transformation
processes.

To import and use `typeSchema` from the "Schema" module:

```ts
import * as Schema from "effect/Schema"
// Can be accessed like this
Schema.typeSchema
```

**Signature**

```ts
export declare const typeSchema: <A, I, R>(schema: Schema<A, I, R>) => SchemaClass<A>
```
