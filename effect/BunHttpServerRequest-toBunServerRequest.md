Package: `@effect/platform-bun`<br />
Module: `BunHttpServerRequest`<br />

## BunHttpServerRequest.toBunServerRequest

Returns the underlying `Bun.BunRequest` from an Effect `HttpServerRequest`.

**Signature**

```ts
declare const toBunServerRequest: <T extends string = string>(self: HttpServerRequest) => Bun.BunRequest<T>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-bun/src/BunHttpServerRequest.ts#L18)

Since v4.0.0