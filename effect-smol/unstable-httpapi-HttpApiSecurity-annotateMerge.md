Package: `effect`<br />
Module: `HttpApiSecurity`<br />

## HttpApiSecurity.annotateMerge

Merges OpenAPI annotations into a security scheme.

**Signature**

```ts
declare const annotateMerge: { <I>(annotations: Context.Context<I>): <A extends HttpApiSecurity>(self: A) => A; <A extends HttpApiSecurity, I>(self: A, annotations: Context.Context<I>): A; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiSecurity.ts#L245)

Since v4.0.0