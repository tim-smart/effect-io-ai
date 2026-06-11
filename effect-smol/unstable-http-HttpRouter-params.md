Package: `effect`<br />
Module: `HttpRouter`<br />

## HttpRouter.params

Effect that returns the path parameters captured for the current matched route.

**Signature**

```ts
declare const params: Effect.Effect<ReadonlyRecord<string, string | undefined>, never, RouteContext>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpRouter.ts#L287)

Since v4.0.0