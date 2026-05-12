Package: `effect`<br />
Module: `HttpRouter`<br />

## HttpRouter.disableLogger

A middleware that disables the logger for some routes.

```ts
import { Effect } from "effect"
import * as Layer from "effect/Layer"
import * as HttpRouter from "effect/unstable/http/HttpRouter"
import * as HttpServerResponse from "effect/unstable/http/HttpServerResponse"

const Route = HttpRouter.add(
  "GET",
  "/hello",
  Effect.succeed(HttpServerResponse.text("Hello, World!"))
).pipe(
  // disable the logger for this route
  Layer.provide(HttpRouter.disableLogger)
)
```

**Signature**

```ts
declare const disableLogger: Layer.Layer<never, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpRouter.ts#L1028)

Since v4.0.0