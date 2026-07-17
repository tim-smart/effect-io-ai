Package: `effect`<br />
Module: `HttpApiGroup`<br />

## HttpApiGroup.MiddlewareError

Computes the middleware error union for every endpoint in a group.

**Signature**

```ts
type MiddlewareError<Group> = HttpApiEndpoint.MiddlewareError<Endpoints<Group>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpApiGroup.ts#L237)

Since v4.0.0