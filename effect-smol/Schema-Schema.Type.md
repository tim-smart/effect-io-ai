Package: `effect`<br />
Module: `Schema`<br />

## Schema.Schema.Type

Extracts the decoded `Type` from a schema.

**Example** (Extracting the decoded type)

```ts
import { Schema } from "effect"

const Person = Schema.Struct({ name: Schema.String, age: Schema.Number })
type Person = Schema.Schema.Type<typeof Person>
// { readonly name: string; readonly age: number }
```

**Signature**

```ts
type Type<S> = S extends Top ? S["Type"] : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L608)

Since v4.0.0