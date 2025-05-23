Package: `@effect/platform`<br />
Module: `HttpClient`<br />

## HttpClient.tapError

Performs an additional effect after an unsuccessful request.

**Signature**

```ts
declare const tapError: { <_, E, E2, R2>(f: (e: NoInfer<E>) => Effect.Effect<_, E2, R2>): <R>(self: HttpClient.With<E, R>) => HttpClient.With<E | E2, R | R2>; <E, R, _, E2, R2>(self: HttpClient.With<E, R>, f: (e: NoInfer<E>) => Effect.Effect<_, E2, R2>): HttpClient.With<E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/HttpClient.ts#L565)

Since v1.0.0