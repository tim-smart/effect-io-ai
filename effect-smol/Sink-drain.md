Package: `effect`<br />
Module: `Sink`<br />

## Sink.drain

Consumes and ignores all stream inputs.

**When to use**

Use to consume all upstream input and complete with void when the input
values and any aggregate result are not needed.

**See**

- `count` for consuming all input while returning the number of elements
- `forEach` for consuming all input while running an effect for each element

**Signature**

```ts
declare const drain: Sink<void, unknown, never, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Sink.ts#L694)

Since v2.0.0