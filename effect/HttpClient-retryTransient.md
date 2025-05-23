Package: `@effect/platform`<br />
Module: `HttpClient`<br />

## HttpClient.retryTransient

Retries common transient errors, such as rate limiting, timeouts or network issues.

Specifying a `while` predicate allows you to consider other errors as
transient.

**Signature**

```ts
declare const retryTransient: { <B, E, R1 = never>(options: { readonly while?: Predicate.Predicate<NoInfer<E>>; readonly schedule?: Schedule.Schedule<B, NoInfer<E>, R1>; readonly times?: number; } | Schedule.Schedule<B, NoInfer<E>, R1>): <R>(self: HttpClient.With<E, R>) => HttpClient.With<E, R1 | R>; <E, R, B, R1 = never>(self: HttpClient.With<E, R>, options: { readonly while?: Predicate.Predicate<NoInfer<E>>; readonly schedule?: Schedule.Schedule<B, NoInfer<E>, R1>; readonly times?: number; } | Schedule.Schedule<B, NoInfer<E>, R1>): HttpClient.With<E, R1 | R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/HttpClient.ts#L525)

Since v1.0.0