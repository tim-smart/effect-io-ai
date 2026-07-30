Package: `@effect/platform`<br />
Module: `HttpApi`<br />

## HttpApi.make

An `HttpApi` is a collection of `HttpApiEndpoint`s. You can use an `HttpApi` to
represent a portion of your domain.

The endpoints can be implemented later using the `HttpApiBuilder.make` api.

**Signature**

```ts
declare const make: <const Id extends string>(identifier: Id) => HttpApi<Id, never, HttpApiDecodeError>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/HttpApi.ts#L261)

Since v1.0.0