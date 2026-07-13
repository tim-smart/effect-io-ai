Package: `effect`<br />
Module: `HttpApiEndpoint`<br />

## HttpApiEndpoint.Payload

Extracts the schema used for an endpoint's request payload.

**Signature**

```ts
type Payload<Endpoint> = Endpoint extends ConstraintRequest ? Endpoint["~Payload"]
  : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiEndpoint.ts#L382)

Since v4.0.0