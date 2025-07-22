Package: `effect`<br />
Module: `Layer`<br />

## Layer.provide

Feeds the output services of this builder into the input of the specified
builder, resulting in a new builder with the inputs of this builder as
well as any leftover inputs, and the outputs of the specified builder.

**Signature**

```ts
declare const provide: { <RIn, E, ROut>(that: Layer<ROut, E, RIn>): <RIn2, E2, ROut2>(self: Layer<ROut2, E2, RIn2>) => Layer<ROut2, E | E2, RIn | Exclude<RIn2, ROut>>; <const Layers extends [Layer.Any, ...Array<Layer.Any>]>(that: Layers): <A, E, R>(self: Layer<A, E, R>) => Layer<A, E | { [k in keyof Layers]: Layer.Error<Layers[k]>; }[number], { [k in keyof Layers]: Layer.Context<Layers[k]>; }[number] | Exclude<R, { [k in keyof Layers]: Layer.Success<Layers[k]>; }[number]>>; <RIn2, E2, ROut2, RIn, E, ROut>(self: Layer<ROut2, E2, RIn2>, that: Layer<ROut, E, RIn>): Layer<ROut2, E | E2, RIn | Exclude<RIn2, ROut>>; <A, E, R, const Layers extends [Layer.Any, ...Array<Layer.Any>]>(self: Layer<A, E, R>, that: Layers): Layer<A, E | { [k in keyof Layers]: Layer.Error<Layers[k]>; }[number], { [k in keyof Layers]: Layer.Context<Layers[k]>; }[number] | Exclude<R, { [k in keyof Layers]: Layer.Success<Layers[k]>; }[number]>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Layer.ts#L893)

Since v2.0.0