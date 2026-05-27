Package: `effect`<br />
Module: `Sink`<br />

## Sink.provideService

Provides a single service implementation to this sink.

**Details**

The service identified by `key` is removed from the sink's service
requirements.

**Signature**

```ts
declare const provideService: { <I, S>(key: Context.Key<I, S>, value: Types.NoInfer<S>): <A, In, L, E, R>(self: Sink<A, In, L, E, R>) => Sink<A, In, L, E, Exclude<R, I>>; <A, In, L, E, R, I, S>(self: Sink<A, In, L, E, R>, key: Context.Key<I, S>, value: Types.NoInfer<S>): Sink<A, In, L, E, Exclude<R, I>>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Sink.ts#L2012)

Since v4.0.0