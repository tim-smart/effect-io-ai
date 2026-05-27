Package: `effect`<br />
Module: `HttpClientResponse`<br />

## HttpClientResponse.matchStatus

Pattern matches on a response status, checking exact status handlers before status-class handlers and `orElse`.

**Signature**

```ts
declare const matchStatus: { <const Cases extends { readonly [status: number]: (_: HttpClientResponse) => any; readonly "2xx"?: (_: HttpClientResponse) => any; readonly "3xx"?: (_: HttpClientResponse) => any; readonly "4xx"?: (_: HttpClientResponse) => any; readonly "5xx"?: (_: HttpClientResponse) => any; readonly orElse: (_: HttpClientResponse) => any; }>(cases: Cases): (self: HttpClientResponse) => Cases[keyof Cases] extends (_: any) => infer R ? Unify<R> : never; <const Cases extends { readonly [status: number]: (_: HttpClientResponse) => any; readonly "2xx"?: (_: HttpClientResponse) => any; readonly "3xx"?: (_: HttpClientResponse) => any; readonly "4xx"?: (_: HttpClientResponse) => any; readonly "5xx"?: (_: HttpClientResponse) => any; readonly orElse: (_: HttpClientResponse) => any; }>(self: HttpClientResponse, cases: Cases): Cases[keyof Cases] extends (_: any) => infer R ? Unify<R> : never; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpClientResponse.ts#L184)

Since v4.0.0