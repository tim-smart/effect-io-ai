Package: `effect`<br />
Module: `Template`<br />

## Template.InterpolatedWithStream

Value accepted by the streaming template constructor.

**Details**

In addition to normal interpolations, stream interpolations can emit primitive
values over time.

**Signature**

```ts
type InterpolatedWithStream = Interpolated | Stream.Stream<Primitive, any, any>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Template.ts#L85)

Since v4.0.0