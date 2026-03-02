Package: `effect`<br />
Module: `HttpApi`<br />

## HttpApi.make

An `HttpApi` is a collection of `HttpApiEndpoint`s. You can use an `HttpApi` to
represent a portion of your domain.

You can then use `HttpApiBuilder.layer(api)` to implement the endpoints of the
`HttpApi`.

**Signature**

```ts
declare const make: <const Id extends string>(identifier: Id) => HttpApi<Id, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApi.ts#L187)

Since v4.0.0