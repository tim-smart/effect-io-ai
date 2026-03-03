Package: `effect`<br />
Module: `Schema`<br />

## Schema.annotate

Adds metadata annotations to a schema without changing its runtime behavior.
Annotations are used to provide additional context for documentation,
JSON schema generation, error formatting, and other tooling.

**Signature**

```ts
declare const annotate: <S extends Top>(annotations: S["~annotate.in"]) => (self: S) => S["~rebuild.out"]
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L270)

Since v4.0.0