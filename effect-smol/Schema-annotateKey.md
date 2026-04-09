Package: `effect`<br />
Module: `Schema`<br />

## Schema.annotateKey

Adds key-level annotations to a schema field. This is the pipeable
(curried) counterpart of the `.annotateKey` method.

Key annotations apply to a field's position inside a `Struct` or `Tuple`
rather than to the field's value type. They can carry a
`messageMissingKey` to customise the error shown when the field is absent,
as well as standard documentation fields such as `title`, `description`,
and `examples`.

**Example** (Custom missing-key message for a required field)

```ts
import { Schema } from "effect"

const schema = Schema.Struct({
  username: Schema.String.pipe(
    Schema.annotateKey({
      description: "The username used to log in",
      messageMissingKey: "Username is required"
    })
  )
})
```

**Signature**

```ts
declare const annotateKey: <S extends Top>(annotations: Annotations.Key<S["Type"]>) => (self: S) => S["~rebuild.out"]
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L514)

Since v4.0.0