Package: `effect`<br />
Module: `Schema`<br />

## Schema.isPropertyNames

Validates that every own property key of an object satisfies the encoded side
of the provided key schema.

**Details**
This check uses `Reflect.ownKeys`, so symbol keys are validated in addition to
string property names.

**JSON Schema**
For string property names, this corresponds to the `propertyNames` constraint
in JSON Schema.

**Signature**

```ts
declare const isPropertyNames: (keySchema: Top, annotations?: Annotations.Filter) => AST.Filter<object>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L7311)

Since v4.0.0