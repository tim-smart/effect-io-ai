Package: `effect`<br />
Module: `HttpApi`<br />

## HttpApi.make

Creates an empty `HttpApi` with the supplied identifier.

**When to use**

Use when add groups with `add` or `addHttpApi`, provide endpoint implementations with
`HttpApiBuilder.group`, and register the API with `HttpApiBuilder.layer`.

**Signature**

```ts
declare const make: <const Id extends string>(identifier: Id) => HttpApi<Id, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApi.ts#L245)

Since v4.0.0