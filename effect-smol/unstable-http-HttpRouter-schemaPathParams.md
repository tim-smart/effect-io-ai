Package: `effect`<br />
Module: `HttpRouter`<br />

## HttpRouter.schemaPathParams

Decodes a schema from the path parameters captured for the current matched
route.

**Signature**

```ts
declare const schemaPathParams: <A, I extends Readonly<Record<string, string | undefined>>, RD, RE>(schema: Schema.Codec<A, I, RD, RE>, options?: ParseOptions | undefined) => Effect.Effect<A, Schema.SchemaError, RouteContext | RD>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpRouter.ts#L436)

Since v4.0.0