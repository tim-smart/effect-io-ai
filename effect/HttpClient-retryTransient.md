Package: `@effect/platform`<br />
Module: `HttpClient`<br />

## HttpClient.retryTransient

Retries common transient errors, such as rate limiting, timeouts or network issues.

Specifying a `while` predicate allows you to consider other errors as
transient.

**Signature**

```ts
declare const retryTransient: { <B, E, R1 = never, const Mode extends "errors-only" | "response-only" | "both" = never, Input = "errors-only" extends Mode ? E : "response-only" extends Mode ? ClientResponse.HttpClientResponse : ClientResponse.HttpClientResponse | E>(options: { readonly mode?: Mode | undefined; readonly while?: Predicate.Predicate<NoInfer<Input>>; readonly schedule?: Schedule.Schedule<B, NoInfer<Input>, R1>; readonly times?: number; } | Schedule.Schedule<B, NoInfer<Input>, R1>): <R>(self: HttpClient.With<E, R>) => HttpClient.With<E, R1 | R>; <E, R, B, R1 = never, const Mode extends "errors-only" | "response-only" | "both" = never, Input = "errors-only" extends Mode ? E : "response-only" extends Mode ? ClientResponse.HttpClientResponse : ClientResponse.HttpClientResponse | E>(self: HttpClient.With<E, R>, options: { readonly mode?: Mode | undefined; readonly while?: Predicate.Predicate<NoInfer<Input>>; readonly schedule?: Schedule.Schedule<B, NoInfer<Input>, R1>; readonly times?: number; } | Schedule.Schedule<B, NoInfer<Input>, R1>): HttpClient.With<E, R1 | R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/HttpClient.ts#L525)

Since v1.0.0