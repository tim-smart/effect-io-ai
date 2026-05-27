Package: `effect`<br />
Module: `HttpStaticServer`<br />

## HttpStaticServer.make

Creates an `HttpApp` that serves files from a directory.

**Example** (Serving files from a directory)

```ts
import { Effect } from "effect"
import { HttpStaticServer } from "effect/unstable/http"

const program = Effect.gen(function*() {
  const app = yield* HttpStaticServer.make({ root: "./public" })
  return app
})
```

**Signature**

```ts
declare const make: (options: { readonly root: string; readonly index?: string | undefined; readonly spa?: boolean | undefined; readonly cacheControl?: string | undefined; readonly mimeTypes?: Record<string, string> | undefined; }) => Effect.Effect<Effect.Effect<HttpServerResponse.HttpServerResponse, HttpServerError.HttpServerError, HttpServerRequest.HttpServerRequest>, PlatformError, FileSystem.FileSystem | Path.Path | HttpPlatform.HttpPlatform>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpStaticServer.ts#L67)

Since v4.0.0