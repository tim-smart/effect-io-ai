Package: `effect`<br />
Module: `HttpApiMiddleware`<br />

## HttpApiMiddleware.layerSchemaErrorTransform

Implement a middleware Layer that transforms `SchemaError`'s.

```ts
import { Effect, Schema } from "effect"
import { HttpApiMiddleware } from "effect/unstable/httpapi"

export class CustomError extends Schema.TaggedErrorClass<CustomError>()("CustomError", {}) {}

export class ErrorHandler extends HttpApiMiddleware.Service<ErrorHandler>()("api/ErrorHandler", {
  error: CustomError
}) {}

export const ErrorHandlerLayer = HttpApiMiddleware.layerSchemaErrorTransform(
  ErrorHandler,
  (schemaError) =>
    Effect.log("Got SchemaError", schemaError).pipe(
      Effect.andThen(Effect.fail(new CustomError()))
    )
)
```

**Signature**

```ts
declare const layerSchemaErrorTransform: <Id, E extends ErrorConstraint, Requires>(service: Context.Service<Id, HttpApiMiddleware<never, E, Requires>>, transform: (error: Schema.SchemaError, context: { readonly endpoint: HttpApiEndpoint.AnyWithProps; readonly group: HttpApiGroup.AnyWithProps; }) => Effect.Effect<HttpServerResponse, ErrorSchemaFromConstraint<E>["Type"] | Schema.SchemaError, Requires | HttpRouter.Provided>) => Layer.Layer<Id>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiMiddleware.ts#L332)

Since v4.0.0