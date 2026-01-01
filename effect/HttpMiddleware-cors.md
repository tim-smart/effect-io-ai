Package: `@effect/platform`<br />
Module: `HttpMiddleware`<br />

## HttpMiddleware.cors

Creates a CORS (Cross-Origin Resource Sharing) middleware for HTTP applications.

**Example**

```ts
import { HttpMiddleware, HttpRouter, HttpServerResponse } from "@effect/platform"

// Allow all origins and reflect requested headers (default behavior)
HttpRouter.empty.pipe(
  HttpRouter.get("/", HttpServerResponse.empty()),
  HttpMiddleware.cors()
)

// Restrict to specific origins and headers
HttpRouter.empty.pipe(
  HttpRouter.get("/", HttpServerResponse.empty()),
  HttpMiddleware.cors({
    allowedOrigins: ["https://example.com"],
    allowedHeaders: ["Content-Type", "Authorization"],
    credentials: true
  })
)

// Dynamic origin checking with predicate
HttpRouter.empty.pipe(
  HttpRouter.get("/", HttpServerResponse.empty()),
  HttpMiddleware.cors({
    allowedOrigins: (origin) => origin.endsWith(".example.com")
  })
)
```

**Signature**

```ts
declare const cors: (options?: { readonly allowedOrigins?: ReadonlyArray<string> | Predicate.Predicate<string> | undefined; readonly allowedMethods?: ReadonlyArray<string> | undefined; readonly allowedHeaders?: ReadonlyArray<string> | undefined; readonly exposedHeaders?: ReadonlyArray<string> | undefined; readonly maxAge?: number | undefined; readonly credentials?: boolean | undefined; } | undefined) => <E, R>(httpApp: App.Default<E, R>) => App.Default<E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/HttpMiddleware.ts#L173)

Since v1.0.0