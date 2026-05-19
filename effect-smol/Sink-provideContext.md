Package: `effect`<br />
Module: `Sink`<br />

## Sink.provideContext

Provides a `Context` to this sink.

Services contained in the provided context are removed from the sink's
service requirements.

**Signature**

```ts
declare const provideContext: { <Provided>(context: Context.Context<Provided>): <A, In, L, E, R>(self: Sink<A, In, L, E, R>) => Sink<A, In, L, E, Exclude<R, Provided>>; <A, In, L, E, R, Provided>(self: Sink<A, In, L, E, R>, context: Context.Context<Provided>): Sink<A, In, L, E, Exclude<R, Provided>>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Sink.ts#L1774)

Since v2.0.0