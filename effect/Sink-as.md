Package: `effect`<br />
Module: `Sink`<br />

## Sink.as

Sets the sink's result to a constant value.

**When to use**

Use to keep a sink's input consumption, errors, requirements, and leftovers
while replacing only its result with a known value.

**See**

- `map` for computing the replacement from the original result

**Signature**

```ts
declare const as: { <A2>(a2: A2): <A, In, L, E, R>(self: Sink<A, In, L, E, R>) => Sink<A2, In, L, E, R>; <A, In, L, E, R, A2>(self: Sink<A, In, L, E, R>, a2: A2): Sink<A2, In, L, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Sink.ts#L893)

Since v2.0.0