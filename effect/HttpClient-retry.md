## retry

Retries the request based on a provided schedule or policy.

**Signature**

```ts
declare const retry: { <E, O extends NoExcessProperties<Effect.Retry.Options<E>, O>>(options: O): <R>(self: HttpClient.With<E, R>) => Retry.Return<R, E, O>; <B, E, R1>(policy: Schedule.Schedule<B, NoInfer<E>, R1>): <R>(self: HttpClient.With<E, R>) => HttpClient.With<E, R1 | R>; <E, R, O extends NoExcessProperties<Effect.Retry.Options<E>, O>>(self: HttpClient.With<E, R>, options: O): Retry.Return<R, E, O>; <E, R, B, R1>(self: HttpClient.With<E, R>, policy: Schedule.Schedule<B, E, R1>): HttpClient.With<E, R1 | R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/HttpClient.ts#L498)

Since v1.0.0