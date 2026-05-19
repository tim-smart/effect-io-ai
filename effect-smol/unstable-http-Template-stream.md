Package: `effect`<br />
Module: `Template`<br />

## Template.stream

Creates a stream of strings from a template literal.

Static text is emitted with interpolated values. Effect interpolations are
evaluated as stream chunks, and stream interpolations are flattened into the
output.

**Signature**

```ts
declare const stream: <A extends ReadonlyArray<InterpolatedWithStream>>(strings: TemplateStringsArray, ...args: A) => Stream.Stream<string, Interpolated.Error<A[number]>, Interpolated.Context<A[number]>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Template.ts#L171)

Since v4.0.0