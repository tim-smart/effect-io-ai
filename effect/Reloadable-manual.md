Package: `effect`<br />
Module: `Reloadable`<br />

## Reloadable.manual

Makes a new reloadable service from a layer that describes the construction
of a static service.

**Signature**

```ts
declare const manual: <I, S, In, E>(tag: Context.Tag<I, S>, options: { readonly layer: Layer.Layer<I, E, In>; }) => Layer.Layer<Reloadable<I>, E, In>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Reloadable.ts#L101)

Since v2.0.0