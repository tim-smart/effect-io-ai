# jsonSchema

Attaches a JSON Schema annotation to a schema that represents a refinement.

If the schema is composed of more than one refinement, the corresponding annotations will be merged.

To import and use `jsonSchema` from the "Schema" module:

```ts
import * as Schema from "@effect/schema/Schema"
// Can be accessed like this
Schema.jsonSchema
```

**Signature**

```ts
export declare const jsonSchema: (jsonSchema: AST.JSONSchemaAnnotation) => <I, A>(self: Schema<I, A>) => Schema<I, A>
```
