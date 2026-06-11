Package: `effect`<br />
Module: `HttpApiGroup`<br />

## HttpApiGroup.MiddlewareServices

Extracts the runtime services required by middleware attached to the endpoints in an `HttpApiGroup`.

**Signature**

```ts
type MiddlewareServices<Group> = HttpApiEndpoint.MiddlewareServices<Endpoints<Group>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiGroup.ts#L236)

Since v4.0.0