Package: `effect`<br />
Module: `HttpApiEndpoint`<br />

## HttpApiEndpoint.Params

Extracts the schema used for an endpoint's path parameters.

**Signature**

```ts
type Params<Endpoint> = Endpoint extends ConstraintRequest ? Endpoint["~Params"]
  : never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpApiEndpoint.ts#L364)

Since v4.0.0