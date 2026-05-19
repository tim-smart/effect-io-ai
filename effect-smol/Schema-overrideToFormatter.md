Package: `effect`<br />
Module: `Schema`<br />

## Schema.overrideToFormatter

Annotates a schema with a custom formatter used by `toFormatter`.

Use this when the formatter derived from the schema structure is not suitable.
The annotation is applied through this helper because adding it directly to
`Annotations.Bottom` would make schemas invariant.

**Signature**

```ts
declare const overrideToFormatter: <S extends Top>(toFormatter: () => Formatter<S["Type"]>) => (self: S) => S["Rebuild"]
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L11491)

Since v4.0.0