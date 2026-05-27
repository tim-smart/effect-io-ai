Package: `effect`<br />
Module: `HttpApiGroup`<br />

## HttpApiGroup.EndpointsWithName

Selects the endpoints in a group whose `name` matches the provided endpoint name.

**Signature**

```ts
type EndpointsWithName<Group, Name> = Endpoints<WithName<Group, Name>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiGroup.ts#L270)

Since v4.0.0