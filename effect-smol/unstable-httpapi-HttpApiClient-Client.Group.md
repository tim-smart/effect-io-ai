Package: `effect`<br />
Module: `HttpApiClient`<br />

## HttpApiClient.Client.Group

The client object for one API group, mapping each endpoint identifier in that
group to its typed client method.

**Signature**

```ts
type Client.Group<Group, E, R> = GroupByEndpoint<Group, E, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiClient.ts#L137)

Since v4.0.0