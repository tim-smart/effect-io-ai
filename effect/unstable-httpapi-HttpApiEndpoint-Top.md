Package: `effect`<br />
Module: `HttpApiEndpoint`<br />

## HttpApiEndpoint.Top

A widened endpoint type that preserves concrete runtime properties such as
method, path, schemas, annotations, and middleware sets.

**Signature**

```ts
export interface Top extends
  HttpApiEndpoint<
    string,
    HttpMethod,
    string,
    Schema.Top,
    Schema.Top,
    Schema.Top,
    Schema.Top,
    Schema.Top,
    Schema.Top,
    any,
    unknown
  >
{}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpApiEndpoint.ts#L318)

Since v4.0.0