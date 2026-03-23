Package: `effect`<br />
Module: `HttpClient`<br />

## HttpClient.retryTransient

Retries common transient errors, such as rate limiting, timeouts or network issues.

Use `retryOn` to focus on retrying errors, transient responses, or both.

Specifying a `while` predicate allows you to consider other errors as
transient, and is ignored in "response-only" mode.

**Signature**

```ts
declare const retryTransient: { <E, B = never, ES = never, R1 = never, const RetryOn extends "errors-only" | "response-only" | "errors-and-responses" = "response-only" | "errors-only" | "errors-and-responses", Input = RetryOn extends "errors-only" ? E : RetryOn extends "response-only" ? HttpClientResponse.HttpClientResponse : HttpClientResponse.HttpClientResponse | E>(options: { readonly retryOn?: RetryOn | undefined; readonly while?: Predicate.Predicate<NoInfer<E | ES>>; readonly schedule?: Schedule.Schedule<B, NoInfer<Input>, ES, R1>; readonly times?: number; }): <R>(self: HttpClient.With<E, R>) => HttpClient.With<E | ES, R1 | R>; <E, R, B = never, ES = never, R1 = never, const RetryOn extends "errors-only" | "response-only" | "errors-and-responses" = "response-only" | "errors-only" | "errors-and-responses", Input = RetryOn extends "errors-only" ? E : RetryOn extends "response-only" ? HttpClientResponse.HttpClientResponse : HttpClientResponse.HttpClientResponse | E>(self: HttpClient.With<E, R>, options: { readonly retryOn?: RetryOn | undefined; readonly while?: Predicate.Predicate<NoInfer<E | ES>>; readonly schedule?: Schedule.Schedule<B, NoInfer<Input>, ES, R1>; readonly times?: number; }): HttpClient.With<E | ES, R1 | R>; <B, E, ES = never, R1 = never>(options: Schedule.Schedule<B, NoInfer<HttpClientResponse.HttpClientResponse | E>, ES, R1>): <R>(self: HttpClient.With<E, R>) => HttpClient.With<E | ES, R1 | R>; <E, R, B, ES = never, R1 = never>(self: HttpClient.With<E, R>, options: Schedule.Schedule<B, NoInfer<HttpClientResponse.HttpClientResponse | E>, ES, R1>): HttpClient.With<E | ES, R1 | R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpClient.ts#L793)

Since v4.0.0