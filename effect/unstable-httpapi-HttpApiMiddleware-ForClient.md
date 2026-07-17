Package: `effect`<br />
Module: `HttpApiMiddleware`<br />

## HttpApiMiddleware.ForClient

Client-side service marker required when a middleware declares `requiredForClient`.

**Signature**

```ts
export interface ForClient<Id> {
  readonly _: unique symbol
  readonly id: Id
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpApiMiddleware.ts#L131)

Since v4.0.0