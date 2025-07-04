Package: `@effect/platform`<br />
Module: `HttpLayerRouter`<br />

## HttpLayerRouter.disableLogger

A middleware that disables the logger for some routes.

```ts
import * as HttpLayerRouter from "@effect/platform/HttpLayerRouter"
import * as HttpServerResponse from "@effect/platform/HttpServerResponse"
import * as Layer from "effect/Layer"

const Route = HttpLayerRouter.add("GET", "/hello", HttpServerResponse.text("Hello, World!")).pipe(
  // disable the logger for this route
  Layer.provide(HttpLayerRouter.disableLogger)
)
```

**Signature**

```ts
declare const disableLogger: Layer.Layer<never, never, never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/HttpLayerRouter.ts#L853)

Since v1.0.0