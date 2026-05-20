Package: `@effect/platform-browser`<br />
Module: `BrowserHttpClient`<br />

## BrowserHttpClient.withXHRArrayBuffer

Runs an effect with `CurrentXHRResponseType` set to `"arraybuffer"` so the XHR HTTP client receives response bodies as `ArrayBuffer` values.

**Signature**

```ts
declare const withXHRArrayBuffer: <A, E, R>(self: Effect.Effect<A, E, R>) => Effect.Effect<A, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-browser/src/BrowserHttpClient.ts#L111)

Since v4.0.0