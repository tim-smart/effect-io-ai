Package: `effect`<br />
Module: `HttpApiEndpoint`<br />

## HttpApiEndpoint.Identifier

Extracts the endpoint identifier literal from an `HttpApiEndpoint`.

**Signature**

```ts
type Identifier<Endpoint> = Endpoint extends Constraint ? Endpoint["identifier"] : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiEndpoint.ts#L340)

Since v4.0.0