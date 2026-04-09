Package: `effect`<br />
Module: `Schema`<br />

## Schema.annotate

Adds metadata annotations to a schema without changing its runtime behavior.
This is the pipeable (curried) counterpart of the `.annotate` method.

Annotations provide extra context used by documentation generators, JSON
Schema converters, error formatters, and other tooling. Common keys include
`title`, `description`, `examples`, `message`, and `identifier`.

**Example** (Adding a title and description)

```ts
import { Schema } from "effect"

const Age = Schema.Number.pipe(
  Schema.annotate({
    title: "Age",
    description: "A non-negative integer representing age in years"
  })
)
```

**Signature**

```ts
declare const annotate: <S extends Top>(annotations: Annotations.Bottom<S["Type"], S["~type.parameters"]>) => (self: S) => S["~rebuild.out"]
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L480)

Since v4.0.0