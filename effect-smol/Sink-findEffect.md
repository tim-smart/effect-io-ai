Package: `effect`<br />
Module: `Sink`<br />

## Sink.findEffect

Creates a sink containing the first matching value.

**Signature**

```ts
declare const findEffect: <In, E, R>(predicate: (input: In) => Effect.Effect<boolean, E, R>) => Sink<Option.Option<In>, In, In, E, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Sink.ts#L1255)

Since v4.0.0