Package: `effect`<br />
Module: `HttpClient`<br />

## HttpClient.catchTag

Handles client failures with one or more matching `_tag` values and returns a transformed client.

**Signature**

```ts
declare const catchTag: { <K extends Tags<E> | NonEmptyReadonlyArray<Tags<E>>, E, E1, R1>(tag: K, f: (e: ExtractTag<NoInfer<E>, K extends NonEmptyReadonlyArray<string> ? K[number] : K>) => Effect.Effect<HttpClientResponse.HttpClientResponse, E1, R1>): <R>(self: HttpClient.With<E, R>) => HttpClient.With<E1 | ExcludeTag<E, K extends NonEmptyReadonlyArray<string> ? K[number] : K>, R1 | R>; <R, E, K extends Tags<E> | NonEmptyReadonlyArray<Tags<E>>, R1, E1>(self: HttpClient.With<E, R>, tag: K, f: (e: ExtractTag<E, K extends NonEmptyReadonlyArray<string> ? K[number] : K>) => Effect.Effect<HttpClientResponse.HttpClientResponse, E1, R1>): HttpClient.With<E1 | ExcludeTag<E, K extends NonEmptyReadonlyArray<string> ? K[number] : K>, R1 | R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpClient.ts#L346)

Since v4.0.0