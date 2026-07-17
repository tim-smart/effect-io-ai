Package: `effect`<br />
Module: `HttpApiEndpoint`<br />

## HttpApiEndpoint.PayloadConstraint

Payload schema depends on the HTTP method:
- for no-body methods, payload is modeled as query params, so each field must
  encode to `string | ReadonlyArray<string> | undefined` and OpenAPI can expand
  it into `in: query` parameters
- for body methods, payload may be any `Schema.Top` (or content-type keyed
  schemas) and OpenAPI uses `requestBody` instead of `parameters`

**Signature**

```ts
type PayloadConstraint<Method> = Method extends HttpMethod.NoBody ? Record<
    string,
    Schema.Encoder<string | ReadonlyArray<string> | undefined, unknown>
  > :
  Schema.Top | ReadonlyArray<Schema.Top>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpApiEndpoint.ts#L912)

Since v4.0.0