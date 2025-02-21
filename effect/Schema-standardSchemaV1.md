# standardSchemaV1

Returns a "Standard Schema" object conforming to the [Standard Schema
v1](https://standardschema.dev/) specification.

This function creates a schema whose `validate` method attempts to decode and
validate the provided input synchronously. If the underlying `Schema`
includes any asynchronous components (e.g., asynchronous message resolutions
or checks), then validation will necessarily return a `Promise` instead.

Any detected defects will be reported via a single issue containing no
`path`.

To import and use `standardSchemaV1` from the "Schema" module:

```ts
import * as Schema from "effect/Schema"
// Can be accessed like this
Schema.standardSchemaV1
```

**Example**

```ts
import { Schema } from "effect"

const schema = Schema.Struct({
  name: Schema.String
})

//      ┌─── StandardSchemaV1<{ readonly name: string; }>
//      ▼
const standardSchema = Schema.standardSchemaV1(schema)
```

**Signature**

```ts
export declare const standardSchemaV1: <A, I>(schema: Schema<A, I, never>) => StandardSchemaV1<I, A>
```
