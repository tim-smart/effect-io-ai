Package: `effect`<br />
Module: `HttpClient`<br />

## HttpClient.followRedirects

Follows HTTP redirects up to a specified number of times.

**Signature**

```ts
declare const followRedirects: { (maxRedirects?: number | undefined): <E, R>(self: HttpClient.With<E, R>) => HttpClient.With<E, R>; <E, R>(self: HttpClient.With<E, R>, maxRedirects?: number | undefined): HttpClient.With<E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpClient.ts#L1290)

Since v4.0.0