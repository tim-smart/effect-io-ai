Package: `effect`<br />
Module: `HttpRouter`<br />

## HttpRouter.Route

Description of a registered HTTP route.

**Details**

A route pairs an HTTP method and path pattern with a response handler, plus
metadata used for prefix handling and interruptibility.

**Signature**

```ts
export interface Route<E = never, R = never> {
  readonly [RouteTypeId]: typeof RouteTypeId
  readonly method: HttpMethod.HttpMethod | "*"
  readonly path: PathInput
  readonly handler: Effect.Effect<HttpServerResponse.HttpServerResponse, E, R>
  readonly uninterruptible: boolean
  readonly prefix: Option.Option<string>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpRouter.ts#L628)

Since v4.0.0