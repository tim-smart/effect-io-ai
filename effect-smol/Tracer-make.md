Package: `effect`<br />
Module: `Tracer`<br />

## Tracer.make

Creates a `Tracer` value from a tracer implementation object.

**When to use**

Use to create a custom tracing backend value that Effect can use when
creating spans.

**Details**

`make` returns the supplied implementation object unchanged. The object must
satisfy the `Tracer` contract, including a `span` method that returns a
`Span`.

**See**

- `Span` for the span values returned by tracer implementations

**Signature**

```ts
declare const make: (options: Tracer) => Tracer
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Tracer.ts#L444)

Since v2.0.0