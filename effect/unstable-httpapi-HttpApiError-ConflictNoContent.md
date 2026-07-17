Package: `effect`<br />
Module: `HttpApiError`<br />

## HttpApiError.ConflictNoContent

No-content schema variant for `Conflict`, decoding an empty 409 response into a
`Conflict` error value.

**Signature**

```ts
declare const ConflictNoContent: HttpApiSchema.asNoContent<typeof Conflict>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpApiError.ts#L272)

Since v4.0.0