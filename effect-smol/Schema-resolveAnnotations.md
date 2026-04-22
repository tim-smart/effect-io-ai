Package: `effect`<br />
Module: `Schema`<br />

## Schema.resolveAnnotations

Resolves the typed annotations from a schema. The term "resolve" (rather
than "get") reflects the lookup strategy: if the schema has checks, the
annotations are taken from the last check; otherwise they are taken from
the base schema instance.

**Signature**

```ts
declare const resolveAnnotations: <S extends Top>(schema: S) => Annotations.Bottom<S["Type"], S["~type.parameters"]> | undefined
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L11835)

Since v4.0.0