Package: `effect`<br />
Module: `HttpMethod`<br />

## HttpMethod.hasBody

Returns `true` when a method can carry a request body and narrows it to `HttpMethod.WithBody`.

**Signature**

```ts
declare const hasBody: (method: HttpMethod) => method is HttpMethod.WithBody
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpMethod.ts#L66)

Since v4.0.0