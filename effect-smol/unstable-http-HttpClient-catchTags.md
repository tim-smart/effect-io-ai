Package: `effect`<br />
Module: `HttpClient`<br />

## HttpClient.catchTags

Handles client failures by matching their `_tag` values against a case map.

**Signature**

```ts
declare const catchTags: { <E, Cases extends { [K in Extract<E, { _tag: string; }>["_tag"]]+?: (error: Extract<E, { _tag: K; }>) => Effect.Effect<HttpClientResponse.HttpClientResponse, any, any>; } & (unknown extends E ? {} : { [K in Exclude<keyof Cases, Extract<E, { _tag: string; }>["_tag"]>]: never; })>(cases: Cases): <R>(self: HttpClient.With<E, R>) => HttpClient.With<Exclude<E, { _tag: keyof Cases; }> | { [K in keyof Cases]: Cases[K] extends (...args: Array<any>) => Effect.Effect<any, infer E, any> ? E : never; }[keyof Cases], R | { [K in keyof Cases]: Cases[K] extends (...args: Array<any>) => Effect.Effect<any, any, infer R> ? R : never; }[keyof Cases]>; <E extends { _tag: string; }, R, Cases extends { [K in Extract<E, { _tag: string; }>["_tag"]]+?: (error: Extract<E, { _tag: K; }>) => Effect.Effect<HttpClientResponse.HttpClientResponse, any, any>; } & (unknown extends E ? {} : { [K in Exclude<keyof Cases, Extract<E, { _tag: string; }>["_tag"]>]: never; })>(self: HttpClient.With<E, R>, cases: Cases): HttpClient.With<Exclude<E, { _tag: keyof Cases; }> | { [K in keyof Cases]: Cases[K] extends (...args: Array<any>) => Effect.Effect<any, infer E, any> ? E : never; }[keyof Cases], R | { [K in keyof Cases]: Cases[K] extends (...args: Array<any>) => Effect.Effect<any, any, infer R> ? R : never; }[keyof Cases]>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpClient.ts#L384)

Since v4.0.0