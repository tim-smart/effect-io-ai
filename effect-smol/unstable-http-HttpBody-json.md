Package: `effect`<br />
Module: `HttpBody`<br />

## HttpBody.json

Creates a JSON HTTP body in an `Effect`.

**Details**

`JSON.stringify` failures are captured as `HttpBodyError` values, and the content type defaults to `application/json`.

**Signature**

```ts
declare const json: (body: unknown, contentType?: string) => Effect.Effect<Uint8Array, HttpBodyError>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpBody.ts#L344)

Since v4.0.0