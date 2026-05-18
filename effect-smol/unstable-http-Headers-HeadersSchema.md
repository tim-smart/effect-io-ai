Package: `effect`<br />
Module: `Headers`<br />

## Headers.HeadersSchema

Schema interface for `Headers` values encoded as records of string header values.

**Signature**

```ts
export interface HeadersSchema extends Schema.declare<Headers, { readonly [x: string]: string }> {}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Headers.ts#L123)

Since v4.0.0