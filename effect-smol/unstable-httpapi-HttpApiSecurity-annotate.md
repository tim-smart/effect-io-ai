Package: `effect`<br />
Module: `HttpApiSecurity`<br />

## HttpApiSecurity.annotate

Adds an OpenAPI annotation value to a security scheme.

**Signature**

```ts
declare const annotate: { <I, S>(service: Context.Key<I, S>, value: S): <A extends HttpApiSecurity>(self: A) => A; <A extends HttpApiSecurity, I, S>(self: A, service: Context.Key<I, S>, value: S): A; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiSecurity.ts#L234)

Since v4.0.0