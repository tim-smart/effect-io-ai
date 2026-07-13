Package: `effect`<br />
Module: `HttpApiGroup`<br />

## HttpApiGroup.MiddlewareProvides

Computes the services provided by middleware attached to any endpoint in a
group.

**Signature**

```ts
type MiddlewareProvides<Group> = HttpApiEndpoint.MiddlewareProvides<Endpoints<Group>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiGroup.ts#L246)

Since v4.0.0