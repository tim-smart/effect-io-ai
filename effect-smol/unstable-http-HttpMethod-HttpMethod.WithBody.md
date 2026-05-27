Package: `effect`<br />
Module: `HttpMethod`<br />

## HttpMethod.HttpMethod.WithBody

HTTP methods that this module treats as capable of carrying a request body.

**Signature**

```ts
type WithBody = Exclude<HttpMethod, NoBody>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpMethod.ts#L72)

Since v4.0.0