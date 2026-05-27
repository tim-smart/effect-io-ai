Package: `effect`<br />
Module: `HttpApiEndpoint`<br />

## HttpApiEndpoint.AnyWithProps

A widened endpoint type that preserves concrete runtime properties such as
method, path, schemas, annotations, and middleware sets.

**Signature**

```ts
export interface AnyWithProps
  extends HttpApiEndpoint<string, HttpMethod, string, Schema.Top, Schema.Top, Schema.Top, Schema.Top, any, any>
{}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiEndpoint.ts#L264)

Since v4.0.0