# withServiceError

Add a service level error, which can then be used with `Router.provideServiceEffect`.

To import and use `withServiceError` from the "Schema" module:

```ts
import * as Schema from "@effect/rpc/Schema"
// Can be accessed like this
Schema.withServiceError
```

**Signature**

```ts
export declare const withServiceError: {
  <EI extends internal.Json, E>(
    error: Schema.Schema<EI, E>
  ): <S extends RpcService.DefinitionWithId>(
    self: S
  ) => RpcService.WithId<S, EI | RpcService.ErrorsFrom<S>, E | RpcService.Errors<S>>
  <S extends RpcService.DefinitionWithId, EI extends internal.Json, E>(
    self: S,
    error: Schema.Schema<EI, E>
  ): RpcService.WithId<S, EI | RpcService.ErrorsFrom<S>, E | RpcService.Errors<S>>
}
```
