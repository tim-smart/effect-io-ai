Package: `effect`<br />
Module: `Cause`<br />

## Cause.YieldableError

Represents an error object that can be yielded in `Effect.gen`.

**Signature**

```ts
export interface YieldableError extends Pipeable, Inspectable, Readonly<Error> {
  readonly [Effect.EffectTypeId]: Effect.Effect.VarianceStruct<never, this, never>
  readonly [Stream.StreamTypeId]: Stream.Stream.VarianceStruct<never, this, never>
  readonly [Sink.SinkTypeId]: Sink.Sink.VarianceStruct<never, unknown, never, this, never>
  readonly [Channel.ChannelTypeId]: Channel.Channel.VarianceStruct<never, unknown, this, unknown, never, unknown, never>
  [Symbol.iterator](): Effect.EffectGenerator<Effect.Effect<never, this, never>>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Cause.ts#L310)

Since v2.0.0