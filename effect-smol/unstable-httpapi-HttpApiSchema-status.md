Package: `effect`<br />
Module: `HttpApiSchema`<br />

## HttpApiSchema.status

A convenience function to set the HTTP status code of a schema.

This is equivalent to calling `.annotate({ httpApiStatus: code })` on the schema.

**Signature**

```ts
declare const status: (code: number) => <S extends Schema.Top>(self: S) => S["Rebuild"]
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiSchema.ts#L89)

Since v4.0.0