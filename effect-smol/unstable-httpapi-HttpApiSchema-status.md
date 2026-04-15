Package: `effect`<br />
Module: `HttpApiSchema`<br />

## HttpApiSchema.status

A convenience function to set the HTTP status code of a schema.

This is equivalent to calling `.annotate({ httpApiStatus: code })` on the schema.

You can pass either a numeric status code (for example, `201`) or a common
literal name (for example, `"Created"`).

**Signature**

```ts
declare const status: { (code: number): <S extends Schema.Top>(self: S) => S["Rebuild"]; (code: StatusLiteral): <S extends Schema.Top>(self: S) => S["Rebuild"]; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiSchema.ts#L167)

Since v4.0.0