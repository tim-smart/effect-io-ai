Package: `effect`<br />
Module: `HttpRouter`<br />

## HttpRouter.PathInput

Path pattern accepted by the router. Routes must use an absolute path
beginning with `/` or the wildcard `*`.

**Signature**

```ts
type PathInput = `/${string}` | "*"
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpRouter.ts#L682)

Since v4.0.0