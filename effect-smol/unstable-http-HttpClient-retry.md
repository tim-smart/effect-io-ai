Package: `effect`<br />
Module: `HttpClient`<br />

## HttpClient.retry

Retries the request based on a provided schedule or policy.

**Signature**

```ts
declare const retry: { <E, O extends NoExcessProperties<Effect.Retry.Options<E>, O>>(options: O): <R>(self: HttpClient.With<E, R>) => Retry.Return<R, E, O>; <B, E, ES, R1>(policy: Schedule.Schedule<B, NoInfer<E>, ES, R1>): <R>(self: HttpClient.With<E, R>) => HttpClient.With<E | ES, R1 | R>; <E, R, O extends NoExcessProperties<Effect.Retry.Options<E>, O>>(self: HttpClient.With<E, R>, options: O): Retry.Return<R, E, O>; <E, R, B, ES, R1>(self: HttpClient.With<E, R>, policy: Schedule.Schedule<B, E, ES, R1>): HttpClient.With<E | ES, R1 | R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpClient.ts#L760)

Since v4.0.0