Package: `effect`<br />
Module: `Sink`<br />

## Sink.map

Transforms this sink's result.

**When to use**

Use to compute a new result from the original sink result while preserving
the sink's input consumption behavior.

**Details**

The transformed sink preserves the original sink's input type, leftovers,
errors, and requirements.

**See**

- `mapEffect` for effectful result transformations
- `as` for replacing the result with a constant value
- `mapEnd` for transforming both the result and leftovers

**Signature**

```ts
declare const map: { <A, A2>(f: (a: A) => A2): <In, L, E, R>(self: Sink<A, In, L, E, R>) => Sink<A2, In, L, E, R>; <A, In, L, E, R, A2>(self: Sink<A, In, L, E, R>, f: (a: A) => A2): Sink<A2, In, L, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Sink.ts#L871)

Since v2.0.0