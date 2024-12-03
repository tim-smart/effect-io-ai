# retryTransient

Retries common transient errors, such as rate limiting, timeouts or network issues.

Specifying a `while` predicate allows you to consider other errors as
transient.

To import and use `retryTransient` from the "HttpClient" module:

```ts
import * as HttpClient from "@effect/platform/HttpClient"
// Can be accessed like this
HttpClient.retryTransient
```

**Signature**

```ts
export declare const retryTransient: {
  <B, E, R1 = never>(
    options:
      | {
          readonly while?: Predicate.Predicate<NoInfer<E>>
          readonly schedule?: Schedule.Schedule<B, NoInfer<E>, R1>
          readonly times?: number
        }
      | Schedule.Schedule<B, NoInfer<E>, R1>
  ): <R>(self: HttpClient<E, R>) => HttpClient<E, R1 | R>
  <E, R, B, R1 = never>(
    self: HttpClient<E, R>,
    options:
      | {
          readonly while?: Predicate.Predicate<NoInfer<E>>
          readonly schedule?: Schedule.Schedule<B, NoInfer<E>, R1>
          readonly times?: number
        }
      | Schedule.Schedule<B, NoInfer<E>, R1>
  ): HttpClient<E, R1 | R>
}
```
