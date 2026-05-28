Package: `effect`<br />
Module: `Sink`<br />

## Sink.findEffect

Creates a sink containing the first value matched by an effectful predicate.

**When to use**

Use when deciding whether an input matches requires an effect, can fail, or
needs services.

**Details**

Returns `Option.some` with the first input whose predicate result is `true`,
or `Option.none` if the upstream stream ends first. If the predicate effect
fails, the sink fails with the same error.

**See**

- `find` for the synchronous predicate variant

**Signature**

```ts
declare const findEffect: <In, E, R>(predicate: (input: In) => Effect.Effect<boolean, E, R>) => Sink<Option.Option<In>, In, In, E, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Sink.ts#L1515)

Since v2.0.0