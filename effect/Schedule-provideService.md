## provideService

Returns a new schedule with a single required service provided, eliminating
the need for external dependencies.

**Details**

This function supplies a single service dependency to a schedule, allowing it
to run without requiring that service externally. If a schedule depends on
multiple services, consider using `provideContext` instead.

This is useful when working with schedules that require a specific service,
such as logging, metrics, or configuration retrieval.

**Signature**

```ts
declare const provideService: { <I, S>(tag: Context.Tag<I, S>, service: Types.NoInfer<S>): <Out, In, R>(self: Schedule<Out, In, R>) => Schedule<Out, In, Exclude<R, I>>; <Out, In, R, I, S>(self: Schedule<Out, In, R>, tag: Context.Tag<I, S>, service: Types.NoInfer<S>): Schedule<Out, In, Exclude<R, I>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schedule.ts#L1466)

Since v2.0.0