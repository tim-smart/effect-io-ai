Package: `effect`<br />
Module: `Schema`<br />

## Schema.annotateEncoded

Adds metadata annotations to the **encoded** side of a schema without
changing its runtime behavior. This is the encoded-side counterpart of
`annotate`, which targets the decoded (Type) side.

Internally the schema is flipped so that `Encoded` becomes `Type`,
annotated, and then flipped back.

**Example** (Adding a title to the encoded representation)

```ts
import { Schema } from "effect"

const schema = Schema.NumberFromString.pipe(
  Schema.annotateEncoded({
    title: "my title"
  })
)

console.log(Schema.toEncoded(schema).ast.annotations?.title)
// "my title"
```

**See**

- `annotate` to annotate the type side instead.

**Signature**

```ts
declare const annotateEncoded: <S extends Top>(annotations: Annotations.Bottom<S["Encoded"], readonly []>) => (self: S) => S["Rebuild"]
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L513)

Since v4.0.0