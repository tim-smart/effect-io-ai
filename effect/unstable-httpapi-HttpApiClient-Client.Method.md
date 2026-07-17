Package: `effect`<br />
Module: `HttpApiClient`<br />

## HttpApiClient.Client.Method

The typed function generated for an endpoint, accepting the endpoint request
shape and returning an effect whose success, error, and service channels reflect
the endpoint schemas, middleware, and selected response mode.

**Signature**

```ts
type Method<Endpoint, E, R> = <Mode extends ResponseMode = ResponseMode>(
    request: Simplify<
      HttpApiEndpoint.ClientRequest<
        Endpoint["~Params"],
        Endpoint["~Query"],
        Endpoint["~Payload"],
        Endpoint["~Headers"],
        Mode
      >
    >
  ) => MethodReturn<Endpoint, E, R, Mode>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpApiClient.ts#L170)

Since v4.0.0