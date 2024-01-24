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
  <R, EI extends internal.Json, E>(
    error: Schema.Schema<R, EI, E>
  ): <S extends RpcService.DefinitionWithId>(
    self: S
  ) => RpcService.WithId<
    S,
    R | Schema.Schema.Context<S[typeof RpcServiceErrorId]>,
    EI | Schema.Schema.From<S[typeof RpcServiceErrorId]>,
    E | Schema.Schema.To<S[typeof RpcServiceErrorId]>
  >
  <S extends RpcService.DefinitionWithId, R, EI extends internal.Json, E>(
    self: S,
    error: Schema.Schema<R, EI, E>
  ): RpcService.WithId<
    S,
    R | Schema.Schema.Context<S[typeof RpcServiceErrorId]>,
    EI | Schema.Schema.From<S[typeof RpcServiceErrorId]>,
    E | Schema.Schema.To<S[typeof RpcServiceErrorId]>
  >
}
```
