Package: `effect`<br />
Module: `Schema`<br />

## Schema.annotateKey

Adds key-specific annotations to a schema field. This is useful for providing
custom error messages and documentation for individual fields within
structures.

**Signature**

```ts
declare const annotateKey: <S extends Top>(annotations: Annotations.Key<S["Type"]>) => (self: S) => S["~rebuild.out"]
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L283)

Since v4.0.0