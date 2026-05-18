Package: `effect`<br />
Module: `HttpApiClient`<br />

## HttpApiClient.Client.Group

The client object for one API group, mapping each endpoint name in that group to
its typed client method.

**Signature**

```ts
type Group<Groups, GroupName, E, R> = [HttpApiGroup.WithName<Groups, GroupName>] extends [HttpApiGroup.HttpApiGroup<infer _GroupName, infer _Endpoints>] ?
      {
        readonly [Endpoint in _Endpoints as HttpApiEndpoint.Name<Endpoint>]: Method<Endpoint, E, R>
      } :
      never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiClient.ts#L119)

Since v4.0.0