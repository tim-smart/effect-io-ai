Package: `effect`<br />
Module: `HttpApiClient`<br />

## HttpApiClient.urlBuilder

Creates a type-safe URL builder keyed by `${method} ${path}`.

**Example**

```ts
import { Schema } from "effect"
import { HttpApi, HttpApiClient, HttpApiEndpoint, HttpApiGroup } from "effect/unstable/httpapi"

const Api = HttpApi.make("Api").add(
  HttpApiGroup.make("users").add(
    HttpApiEndpoint.get("getUser", "/users/:id", {
      params: { id: Schema.String }
    })
  )
)

const buildUrl = HttpApiClient.urlBuilder<typeof Api>({
  baseUrl: "https://api.example.com"
})

buildUrl("users", "GET /users/:id", {
  params: { id: "123" }
})
//=> "https://api.example.com/users/123"
```

**Signature**

```ts
declare const urlBuilder: <Api extends HttpApi.Any>(options?: { readonly baseUrl?: URL | string | undefined; }) => UrlBuilder<Api>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiClient.ts#L507)

Since v4.0.0