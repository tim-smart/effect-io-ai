Package: `effect`<br />
Module: `HttpApiGroup`<br />

## HttpApiGroup.EndpointsWithIdentifier

Extracts the endpoint union from the group with the specified identifier.

**Signature**

```ts
type EndpointsWithIdentifier<Group, Identifier> = Endpoints<
  WithIdentifier<Group, Identifier>
>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpApiGroup.ts#L270)

Since v4.0.0