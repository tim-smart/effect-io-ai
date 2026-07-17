Package: `effect`<br />
Module: `HttpApiEndpoint`<br />

## HttpApiEndpoint.Request

Builds the decoded request shape passed to a normal endpoint handler, including
available params, query, payload, headers, the raw request, endpoint, and group.
Multipart stream payloads are exposed as streams of parts.

**Signature**

```ts
type Request<Endpoint> = Endpoint extends ConstraintRequest ? Endpoint["~Request"]
  : {}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpApiEndpoint.ts#L459)

Since v4.0.0