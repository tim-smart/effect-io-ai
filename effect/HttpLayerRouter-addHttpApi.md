Package: `@effect/platform`<br />
Module: `HttpLayerRouter`<br />

## HttpLayerRouter.addHttpApi

```ts
import * as NodeHttpServer from "@effect/platform-node/NodeHttpServer"
import * as NodeRuntime from "@effect/platform-node/NodeRuntime"
import * as HttpApi from "@effect/platform/HttpApi"
import * as HttpApiBuilder from "@effect/platform/HttpApiBuilder"
import * as HttpApiEndpoint from "@effect/platform/HttpApiEndpoint"
import * as HttpApiGroup from "@effect/platform/HttpApiGroup"
import * as HttpApiScalar from "@effect/platform/HttpApiScalar"
import * as HttpLayerRouter from "@effect/platform/HttpLayerRouter"
import * as HttpMiddleware from "@effect/platform/HttpMiddleware"
import * as Effect from "effect/Effect"
import * as Layer from "effect/Layer"
import { createServer } from "http"

// First, we define our HttpApi
class MyApi extends HttpApi.make("api").add(
  HttpApiGroup.make("users").add(
    HttpApiEndpoint.get("me", "/me")
  ).prefix("/users")
) {}

// Implement the handlers for the API
const UsersApiLayer = HttpApiBuilder.group(MyApi, "users", (handers) => handers.handle("me", () => Effect.void))

// Use `HttpLayerRouter.addHttpApi` to register the API with the router
const HttpApiRoutes = HttpLayerRouter.addHttpApi(MyApi, {
  openapiPath: "/docs/openapi.json"
}).pipe(
  // Provide the api handlers layer
  Layer.provide(UsersApiLayer)
)

// Create a /docs route for the API documentation
const DocsRoute = HttpApiScalar.layerHttpLayerRouter({
  api: MyApi,
  path: "/docs"
})

const CorsMiddleware = HttpLayerRouter.middleware(HttpMiddleware.cors())
// You can also use HttpLayerRouter.cors() to create a CORS middleware

// Finally, we merge all routes and serve them using the Node HTTP server
const AllRoutes = Layer.mergeAll(
  HttpApiRoutes,
  DocsRoute
).pipe(
  Layer.provide(CorsMiddleware.layer)
)

HttpLayerRouter.serve(AllRoutes).pipe(
  Layer.provide(NodeHttpServer.layer(createServer, { port: 3000 })),
  Layer.launch,
  NodeRuntime.runMain
)
```

**Signature**

```ts
declare const addHttpApi: <Id extends string, Groups extends HttpApiGroup.HttpApiGroup.Any, E, R>(api: HttpApi.HttpApi<Id, Groups, E, R>, options?: { readonly openapiPath?: `/${string}` | undefined; }) => Layer.Layer<never, never, HttpRouter | HttpApiGroup.HttpApiGroup.ToService<Id, Groups> | R | HttpApiGroup.HttpApiGroup.ErrorContext<Groups>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/HttpLayerRouter.ts#L989)

Since v1.0.0